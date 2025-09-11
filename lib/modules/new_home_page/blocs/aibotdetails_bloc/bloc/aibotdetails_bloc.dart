import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

import '../../../models/aibotdetails_model/aidetailsmodel.dart';

part 'aibotdetails_event.dart';
part 'aibotdetails_state.dart';
part 'aibotdetails_bloc.freezed.dart';

class AibotdetailsBloc extends Bloc<AibotdetailsEvent, AibotdetailsState> {
  List<Map<String, dynamic>> datalist = [];
  AibotdetailsBloc() : super(const _Initial()) {
    on<AibotdetailsEvent>((event, emit) async {
      // TODO: implement event handler

      try {
        emit(const _Initial());
        if (event is _Fetchdata) {
          datalist.clear();
          emit(const _Loading());
          // final agedataSnapShot =
          //     await FirebaseFirestore.instance.collection('aibotdetails').get();
          final loginid = await IsarServices().getLoginId();
          final QuerySnapshot aidataSnapShot = await FirebaseFirestore.instance
              .collection('aibotdetails')
              .where('userid', whereIn: ['common', loginid]).get();
          final baseurlsnapshot = await FirebaseFirestore.instance
              .collection('api')
              .doc('baseurl')
              .get();
          final baseurl = baseurlsnapshot.data()!.entries.first.value;
          print(baseurl);
          List<Aidetail> results = aidataSnapShot.docs.map((e) {
            return Aidetail(
                assistantId: e["assistant_id"],
                botname: e["botname"],
                //botno: e["botno"],
                threadId: e["thread_id"],
                botimage: e["botimage"],
                botid: e["botid"],
                userid: e["userid"],
                botdescription: e["botdescription"]);
          }).toList();
          print(results);
          BotdetailsModel botdetailsModel = BotdetailsModel(aidetails: results);
          // BotdetailsModel avatarsModel = BotdetailsModel(
          //     result: queryAvatars.docs.map((e) {
          //   return Result(
          //     id: 0,
          //     image: e.get("imageUrl"),
          //     name: '',
          //   );
          // }).toList());
          for (QueryDocumentSnapshot doc in aidataSnapShot.docs) {
            Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
            datalist.add(data);
            print('Document ID: ${doc.id}, Data: $data');
          }
          print(datalist);
          emit(AibotdetailsState.sucess(
              data: botdetailsModel, baseurl: baseurl));
          // List<AibotModell> aiGroups = List<AibotModell>.from(
          //     agedataSnapShot.docs.map((e) => AibotModell.fromJson(e.data())));
          // print("length of ai groups=$aiGroups.length");
          // for (var v in aiGroups) {
          //   print(v.assistantId);
          //   print(v.botid);
          //   print(v.botimage);
          //   print(v.botname);
          // }
        }
      } catch (e) {
        emit(const _Error());
      }
    });
  }
}
