import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/new_home_page/service/create_session.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc() : super(const _Initial()) {
    on<SessionEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _createnewsession) {
        try {
          final response = await createsession(asstid: event.assstId);
          //await IsarServices().saveSession(session: response.session);
          final loginid = await IsarServices().getLoginId();
          String formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
          String formattedDate =
              DateFormat('dd/MM/yyyy').format(DateTime.now());

          Map<String, dynamic> sessionData = {
            'time': formattedTime,
            'date': formattedDate,
            "sessionid": response.sesId,
            "loginid": loginid,
            "assistantname": event.name
          };
          final docRef = await FirebaseFirestore.instance
              .collection('sessions')
              .add(sessionData);

          emit(SessionState.newsessionsuccess(
              sessionid: response.sesId,
              name: event.name,
              image: event.image,
              heroid: event.herowidgetstring,
              assistantid: event.assstId,
              video: event.video,
              istalking: event.isTalking));
        } catch (e) {
          emit(const SessionState.newsessionerror());
        }
      }
    });
  }
}
