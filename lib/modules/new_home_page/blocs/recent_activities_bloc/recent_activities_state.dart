part of 'recent_activities_bloc.dart';

@freezed
class RecentActivitiesState with _$RecentActivitiesState {
  const factory RecentActivitiesState.error() = _Error;
  const factory RecentActivitiesState.initial() = _Initial;
  const factory RecentActivitiesState.loading() = _Loading;
  const factory RecentActivitiesState.success(
      {required List<Activity> recentList, required bool newUser}) = _Success;
}
