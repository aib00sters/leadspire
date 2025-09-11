part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _Initial;
  const factory FeedbackState.success() = _Success;
  const factory FeedbackState.error() = _Error;
  
  
}
