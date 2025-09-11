part of 'subscribe_topics_bloc.dart';

@freezed
class SubscribeTopicsState with _$SubscribeTopicsState {
  const factory SubscribeTopicsState.error({required String errorMsg}) = _Error;
  const factory SubscribeTopicsState.initial() = _Initial;
  const factory SubscribeTopicsState.loading() = _Loading;
  const factory SubscribeTopicsState.success() = _Success;
}
