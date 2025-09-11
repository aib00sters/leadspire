import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/firebase_services.dart';

part 'subscribe_topics_bloc.freezed.dart';
part 'subscribe_topics_event.dart';
part 'subscribe_topics_state.dart';

class SubscribeTopicsBloc
    extends Bloc<SubscribeTopicsEvent, SubscribeTopicsState> {
  SubscribeTopicsBloc() : super(const _Initial()) {
    on<SubscribeTopicsEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _FetchTopics) {
          emit(const _Loading());
          final userId = await IsarServices().getUserId();
          final groupListStream = FirebaseFirestore.instance
              .collection('chats')
              .where('participants', arrayContains: userId)
              .snapshots();
          await emit.forEach(
            groupListStream,
            onData: (data) {
              final topics = data.docs.map((e) => e.id).toList()..add(userId);
              add(_Subscribe(topics));
              return const _Initial();
            },
          );
        } else if (event is _Subscribe) {
          emit(const _Loading());
          await FireBaseServices().subScribeToTopics(event.topics);
          emit(const _Success());
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
