part of 'gethistory_bloc.dart';

@freezed
class GethistoryState with _$GethistoryState {
  const factory GethistoryState.initial() = _Initial;
  const factory GethistoryState.gethistorysuccess({required Historymodel data}) = _Gethistorysuccess;
  const factory GethistoryState.gethistoryerror() = _Gethistoryerror;
  
  
}
