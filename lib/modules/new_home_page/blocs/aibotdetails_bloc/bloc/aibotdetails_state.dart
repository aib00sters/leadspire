part of 'aibotdetails_bloc.dart';

@freezed
class AibotdetailsState with _$AibotdetailsState {
  const factory AibotdetailsState.initial() = _Initial;
  const factory AibotdetailsState.error() = _Error;
  const factory AibotdetailsState.loading() = _Loading;
  const factory AibotdetailsState.sucess({ required BotdetailsModel data,required String baseurl}) = _sucess;
  
  
  
}
