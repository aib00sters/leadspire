import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';
part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc() : super(const _Initial()) {
    on<FeedbackEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const FeedbackState.initial());
      try {
        if (event is _enterfeedback) {
          CollectionReference bots =
              FirebaseFirestore.instance.collection('feedback');
          final loginid = await IsarServices().getLoginId();

          await bots.add({
            "userid": loginid,
            'feedback': event.feedback,
          }).then((value) {
            emit(const FeedbackState.success());
          });
        }
      } catch (e) {
        emit(const FeedbackState.error());
      }
    });
  }
}
