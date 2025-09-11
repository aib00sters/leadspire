part of 'recent_activities_bloc.dart';

@freezed
class RecentActivitiesEvent with _$RecentActivitiesEvent {
  const factory RecentActivitiesEvent.fetchRecent() = _FetchRecent;
  const factory RecentActivitiesEvent.listenEvent() = _ListenEvent;
  const factory RecentActivitiesEvent.started() = _Started;
}
