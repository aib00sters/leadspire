// import 'package:device_apps/device_apps.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mobile_app_stores_search/mobile_app_stores_search.dart';

// import '../../../utilities/screen_sizer.dart';

// class AppInfo {
//   String? name;
//   Uint8List? icon;

//   int? category;

//   AppInfo({
//     required this.name,
//     required this.icon,
//     required this.category,
//   });

//   factory AppInfo.create(dynamic data) {
//     return AppInfo(
//       icon: data["name"],
//       name: data["icon"],
//       category: data["category"],
//     );
//   }
// }

// class OtherAppsPage extends StatefulWidget {
//   const OtherAppsPage({super.key});

//   @override
//   State<OtherAppsPage> createState() => _OtherAppsPageState();
// }

// class _OtherAppsPageState extends State<OtherAppsPage> {
//   static const platform = MethodChannel("wellbeings/channel");
//   late List<AppInfo> listFuture;

//   late ApplicationWithIcon applicationWithIcon;
//   late MobileAppStoresSearch mobileAppStoresSearch;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//       ),
//       body: ScreenSetter(
//         child: FutureBuilder(
//           future: mobileAppStoresSearch.searchAppInStoreResponseJson(
//               searchQuery: 'meditation calm', searchInAppleStore: true),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return GridView.builder(
//                 itemCount: snapshot.data!.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4, childAspectRatio: .9),
//                 itemBuilder: (context, index) {
//                   applicationWithIcon =
//                       snapshot.data![index] as ApplicationWithIcon;

//                   return Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Image.memory(
//                             applicationWithIcon.icon,
//                             height: 50,
//                           ),
//                           Text(
//                             snapshot.data![index].category.name,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(color: Colors.red),
//                           ),
//                           Text(
//                             snapshot.data![index].appName,
//                             overflow: TextOverflow.ellipsis,
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return const SizedBox();
//             }
//           },
//         ),
//       ),
//     ));
//   }

//   Future<void> getAppsList() async {
//     //final List<dynamic> jsonArray = await platform.invokeMethod("getAppInfo");
//   }

//   @override
//   void initState() {
//     mobileAppStoresSearch = MobileAppStoresSearch(
//         apiKey: "MzCPrAGBoYai9FOj6iGCP61Q6SekVGLV1P6Jfjwh",
//         uuid: "iFPLPiHrnBagCHWzwYQKQlZ7L2I2");
//     platform.setMethodCallHandler((call) => methodCallHandler(call));

//     getAppsList();
//     super.initState();
//   }

//   Future<dynamic> methodCallHandler(MethodCall call) async {}
// }
