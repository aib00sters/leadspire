import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_models/chat_details_model/chat_details.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/new_home_page/models/aibotdetails_model.dart';
import 'package:wellbeings/modules/new_home_page/models/aibotdetails_model/aidetailsmodel.dart';
import 'package:wellbeings/modules/new_home_page/service/ai_bot_details_service.dart';


part 'aibotdata_event.dart';
part 'aibotdata_state.dart';
part 'aibotdata_bloc.freezed.dart';

class AibotdataBloc extends Bloc<AibotdataEvent, AibotdataState> {
  AibotdataBloc() : super(const _Initial()) {
    on<AibotdataEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const AibotdataState.initial());
      try {
        if (event is _getdata) {
          final response = await getaibotdetails();
          final isar = await IsarServices().openDB();

          final data = ChatData()..documentId = response.tokens!.access;
          isar.writeTxnSync(() {
            isar.chatDatas.putSync(data);
          });

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
          // List<Aidetail> results = aidataSnapShot.docs.map((e) {
          //   return Aidetail(
          //       assistantId: "12",
          //       botname: "John",
          //       //botno: e["botno"],
          //       threadId: "",
          //       botimage: "",
          //       botid: "",
          //       userid: "",
          //       botdescription: "My Counselor");
          // }).toList();
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
          emit(AibotdataState.aibotdatasuccess(
              model: response, imageslist: results));
        }
      } catch (e) {
        emit(const AibotdataState.aibotdataerror());
      }
    });
  }
}
