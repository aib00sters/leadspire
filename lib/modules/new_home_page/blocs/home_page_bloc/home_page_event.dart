part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
 
  const factory HomePageEvent.fetchHomeData() = _FetchHomeData;
  const factory HomePageEvent.started() = _Started;

}
