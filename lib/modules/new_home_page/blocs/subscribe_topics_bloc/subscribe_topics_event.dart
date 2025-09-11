part of 'subscribe_topics_bloc.dart';

@freezed
class SubscribeTopicsEvent with _$SubscribeTopicsEvent {
  const factory SubscribeTopicsEvent.fetchTopics() = _FetchTopics;
  const factory SubscribeTopicsEvent.started() = _Started;

  const factory SubscribeTopicsEvent.subscribe(List<String> topics) =
      _Subscribe;
}
