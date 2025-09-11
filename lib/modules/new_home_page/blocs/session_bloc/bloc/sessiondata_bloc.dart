import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/new_home_page/models/sessions_model.dart';


part 'sessiondata_event.dart';
part 'sessiondata_state.dart';
part 'sessiondata_bloc.freezed.dart';

class SessiondataBloc extends Bloc<SessiondataEvent, SessiondataState> {
  SessiondataBloc() : super(const _Initial()) {
    on<SessiondataEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const SessiondataState.initial());
      try {
        if (event is _Getsessions) {
          final loginid = await IsarServices().getLoginId();
          // final QuerySnapshot aidataSnapShot = await FirebaseFirestore.instance
          //     .collection('sessions')
          //     .where('loginid', whereIn: ['common', loginid]).get();
          final QuerySnapshot aidataSnapShot = await FirebaseFirestore.instance
              .collection('sessions')
              .where('loginid', whereIn: ['common', loginid])
              .where('assistantname', isEqualTo: event.assistantname)
              .get();
          List<SessionDetail> results = aidataSnapShot.docs.map((e) {
            return SessionDetail(
                date: e["date"],
                loginId: e["loginid"],
                sessionId: e["sessionid"],
                time: e["time"]);
          }).toList();
          print(results);
          if (results.isNotEmpty) {
            emit(SessiondataState.getsessionssuccess(
                data: results,
                assistantid: event.assistantid,
                assistantname: event.assistantname,
                image: event.image,
                heroindex: event.heroindex,
                video: event.avatar_video,
                istalking: event.istalking));
          } else {
            emit(SessiondataState.sessionsempty(
                assistantid: event.assistantid,
                assistantname: event.assistantname,
                image: event.image,
                heroindex: event.heroindex,
                video: event.avatar_video,
                istalking: event.istalking));
          }
        }
      } catch (e) {
        emit(const SessiondataState.error());
      }
    });
  }
}
