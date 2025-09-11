import 'dart:convert';
import 'dart:io';

// import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:googleapis_auth/googleapis_auth.dart' as auth;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Messages $message.notification");
  }
  //demoNotification(message);
  //_showNotificationWithDefaultSound("Hello", "Mats App");
  //await Firebase.initializeApp();
}

class FireBaseServices {
  androidNotificationChannel() => const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        playSound: true,
        importance: Importance.max,
      );

  enableIOSNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  registerNotificationListeners() async {
    AndroidNotificationChannel channel = androidNotificationChannel();
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    var androidSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSSettings = const DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );
    var initSetttings =
        InitializationSettings(android: androidSettings, iOS: iOSSettings);
    flutterLocalNotificationsPlugin.initialize(
      initSetttings,
    );
// onMessage is called when the app is in foreground and a notification is received
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      // Get.find<HomeController>().getNotificationsNumber();

      RemoteNotification? notification = message!.notification;
      AndroidNotification? android = message.notification?.android;
// If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              // icon: "@mipmap/launcher_icon",
              playSound: true,
            ),
          ),
        );
      }
      // String notifType = message.data["Type"];
      // if (notifType == "seen") {
      //   FlutterLocalNotificationsPlugin().cancel(message.notification.hashCode);
      // }
    });
  }

  Future<void> sendNotification({
    required String fcmToken,
    required String title,
    required String body,
    required String type,
  }) async {
    // Load the service account JSON key
    // final serviceAccount = File(
    //         'assets/service_account/wellbeing-b147a-firebase-adminsdk-7z0wu-d03701c72e.json')
    //     .readAsStringSync();
    final String serviceAccount = await rootBundle.loadString(
        'assets/service_account/wellbeing-b147a-firebase-adminsdk-7z0wu-d03701c72e.json');
    final credentials = auth.ServiceAccountCredentials.fromJson(serviceAccount);
    // Obtain an OAuth2 Access Token
    final client = await clientViaServiceAccount(
      credentials,
      ['https://www.googleapis.com/auth/firebase.messaging'],
    );
    final Map<String, dynamic> messageData = {
      "message": {
        "token": fcmToken,
        "notification": {"title": title, "body": body},
        "data": {
          "type": type,
        }
      }
    };
    final response = await client.post(
      Uri.parse(
          'https://fcm.googleapis.com/v1/projects/wellbeing-b147a/messages:send'),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(messageData),
    );
    if (response.statusCode == 200) {
      print('Notification sent successfully');
    } else {
      print('Failed to send notification. Error: ${response.body}');
    }
  }

  // Future<void> sendNotification({
  //   required String fcmToken,
  //   required String title,
  //   required String body,
  //   required String type,
  // }) async {
  //   String serverToken =
  //       "AAAASrbDa7g:APA91bFzXIdDBeOvqHi_7eFx-IHgTpcpKl-ncnaetg_8LEgcvjl4TWa9lsUpXcRmvbhYFyFddQKJl6BiRCPer9T-g9yPFGMFNFAsTNMx-DNl48fdA4eIP5F3Zq1KAdA7NAK3ADrJi7HA"; // DO NOT expose this in mobile

  //   final Map<String, dynamic> notificationData = {
  //     'notification': {
  //       'title': title,
  //       'body': body,
  //       'sound': 'default',
  //       'badge': '1',
  //     },
  //     'priority': 'high',
  //     'data': {
  //       'subtitle': 'value1',
  //       'key2': type,
  //     },
  //     'to': fcmToken, // Send to a specific device token
  //   };

  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'key=$serverToken',
  //   };

  //   final response = await http.post(
  //     Uri.parse('https://fcm.googleapis.com/fcm/send'),
  //     headers: headers,
  //     body: jsonEncode(notificationData),
  //   );

  //   if (response.statusCode == 200) {
  //     print('Notification sent successfully');
  //   } else {
  //     print('Failed to send notification. Error: ${response.body}');
  //   }
  // }

  Future<void> setupFirebase({required String version}) async {
    // String googleServicesJson = version == "production"
    //     ? 'google-services-production.json'
    //     : 'google-services-development.json';
    // await Firebase.initializeApp(
    //   options: FirebaseOptions()
    // );
    // await Firebase.initializeApp();
    if (version == "production") {
      if (Platform.isAndroid) {
        await Firebase.initializeApp(
            // name: "production",
            options: const FirebaseOptions(
                apiKey: "AIzaSyCgQOVy9f1XtHVed_eGnJUBkMGequxS9Bc",
                appId: "1:320893840312:android:6ea2c898e0b0721624bd4d",
                messagingSenderId: "320893840312",
                projectId: "wellbeing-b147a"));
      } else {
        await Firebase.initializeApp(
            // name: "production",
            options: const FirebaseOptions(
                apiKey: "AIzaSyCgQOVy9f1XtHVed_eGnJUBkMGequxS9Bc",
                appId: "11:320893840312:ios:b16e571f030386c424bd4d",
                messagingSenderId: "320893840312",
                projectId: "wellbeing-b147a"));
      }
    } else {
      await Firebase.initializeApp(
          name: "development",
          options: const FirebaseOptions(
              apiKey: "AIzaSyBBOCHroicaArCBbGlhsCGOTCkmZdhB9nA ",
              appId: "1:387394779805:android:0b916506e2030fa90ef274",
              messagingSenderId: "387394779805",
              projectId: "wellbeingus-95cea"));
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    final messaging = FirebaseMessaging.instance;
    await enableIOSNotifications();
    await registerNotificationListeners();
    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User granted permission to show notifications');
    } else {
      print('User denied permission to show notifications');
    }

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((event) async {
      AndroidNotificationChannel channel = AndroidNotificationChannel(
        event.from ?? "", // id
        'High Importance Notifications', // title
        // description
        importance: Importance.max,
      );
      RemoteNotification? notification = event.notification;
      AndroidNotification? android = event.notification?.android;
      final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
          FlutterLocalNotificationsPlugin();

      if (event.notification != null) {
        //createNewNotification(event);
      }

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                priority: Priority.high,
                icon: android.smallIcon,
                // other properties...
              ),
            ));
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> subScribeToTopics(List<String> topics) async {
    final messaging = FirebaseMessaging.instance;
    for (var element in topics) {
      await messaging.subscribeToTopic(element);
    }
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['key2'] == 'chat') {
      //AppNavigator.pushNamed('/chatList');
    } else if (message.data['key2'] == 'request') {
      AppNavigator.pushNamed('/friendRequest');
    } else if (message.data['key2'].toString().contains("call")) {
      var callparams = message.data['key2'].toString().split('-');

      AppNavigator.pushNamed('/callpage',
          arguments:
              DataToCallPage(callparams[1], callparams[2], callparams[3]));
    }
  }

  // static Future<void> createNewNotification(RemoteMessage event) async {
  //   bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
  //   // if (!isAllowed) isAllowed = await displayNotificationRationale();
  //   if (!isAllowed) return;

  //   await AwesomeNotifications().createNotification(
  //       content: NotificationContent(
  //           id: -1, // -1 is replaced by a random number
  //           channelKey: 'alerts',
  //           title: event.notification!.title,
  //           body: event.notification!.body,
  //           payload: {'notificationId': '1234567890'}),
  //       actionButtons: [
  //         NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
  //         NotificationActionButton(
  //             key: 'REPLY',
  //             label: 'Reply Message',
  //             requireInputText: true,
  //             actionType: ActionType.SilentAction),
  //         NotificationActionButton(
  //             key: 'DISMISS',
  //             label: 'Dismiss',
  //             actionType: ActionType.DismissAction,
  //             isDangerousOption: true)
  //       ]);
  // }
 }
