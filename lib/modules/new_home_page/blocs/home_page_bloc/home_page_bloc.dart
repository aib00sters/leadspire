import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/new_home_page/models/categories_model/categories_model.dart';


import '../../../../data/isar_services.dart';
import '../../models/home_page_model/home_page_model.dart';

part 'home_page_bloc.freezed.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final homeData = {
    "homeData": {
      "recent": [
        {
          "activityName": "Be Grateful",
          "subtitle": "1 min",
          "activityId": "1001",
          "activityImage":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Lofoten.png?alt=media&token=7e900702-3f98-4439-8865-04bac2a61037",
          "songUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/ambient-classical-guitar-144998.mp3?alt=media&token=fccc14d2-7ccc-499c-901c-3a7771ac2fd9"
        },
        {
          "activityName": "Lofoten",
          "activityId": "1002",
          "subtitle": "2 min",
          "activityImage":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Motivational.png?alt=media&token=d48b21b0-fe8d-4fd0-b52f-784a7a89ee55",
          "songUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/easy-lifestyle-137766.mp3?alt=media&token=26328e3b-0e93-4de3-b71d-b4d9cbffb6a0"
        }
      ],
      "categories": [
        {
          "catId": "1001",
          "catName": "Meditation",
          "imageUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Group%20123959.png?alt=media&token=9af9a274-af9d-4ecc-88df-ea83e07a093e",
        },
        {
          "catId": "1002",
          "catName": "Relax & Sleep",
          "imageUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Group%20123960.png?alt=media&token=0e0e1b67-7d93-4e7f-8dab-d72f01e99d1e"
        },
        {
          "catId": "1003",
          "catName": "Tell us a story",
          "imageUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Group%20123962.png?alt=media&token=79b905c0-7a6f-46e9-a404-b25b24a739c4",
        },
        {
          "catId": "1004",
          "catName": "Painting",
          "imageUrl":
              "https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Group%20123961.png?alt=media&token=204ed4d3-0151-4c27-9742-5099cd00b40f",
        }
      ]
    }
  };
  List<Map<String, dynamic>> datalist = [];
  HomePageBloc() : super(const _Initial()) {
    on<HomePageEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchHomeData) {
          emit(const _Loading());
          datalist.clear();
          final loginid = await IsarServices().getLoginId();

          final categoriesSnapShot =
              await FirebaseFirestore.instance.collection('categories').get();
          List<Categorydatum> results = categoriesSnapShot.docs.map((e) {
            return Categorydatum(
                catId: e["catId"],
                catName: e["catName"],
                imageUrl: e["imageUrl"]);
          }).toList();
          print(results);
          CategoriesDetailsModel categorymodel =
              CategoriesDetailsModel(categorydata: results);
          //BotdetailsModel botdetailsModel = BotdetailsModel(aidetails: results);
          Map<String, dynamic> data = {};
          for (QueryDocumentSnapshot doc in categoriesSnapShot.docs) {
            Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
            print(data);
            datalist.add(data);
            print('Document ID: ${doc.id}, Data: $data');
          }
          print(datalist);
          print(categoriesSnapShot.docs.length);

          // List<CategoryModel> categorylist=List<CategoryModel>.from(categoriesSnapShot.docs.map((e) =>
          //   CategoryModel(catId: e.data()., catName: catName, imageUrl: imageUrl)
          // ));
          // categoriesSnapShot.docs.map((category) =>
          // CategoryModel(catId: category.data()., catName: catName, imageUrl: imageUrl)
          //  ).toList();

          final resp = HomePageModel.fromJson(homeData);
          FlutterLocalNotificationsPlugin().cancelAll();
          emit(_Success(
              homePageModel: resp,
              profilePic: await IsarServices().getProfilePic(),
              userName: await IsarServices().getName(),
              data: categorymodel));
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }
}
