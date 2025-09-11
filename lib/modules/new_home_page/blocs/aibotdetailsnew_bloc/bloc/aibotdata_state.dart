part of 'aibotdata_bloc.dart';

@freezed
class AibotdataState with _$AibotdataState {
  const factory AibotdataState.initial() = _Initial;
  const factory AibotdataState.aibotdatasuccess({required Aibotdetailsmodel model,required List <Aidetail> imageslist}) = _Aibotdatasuccess;
  const factory AibotdataState.aibotdataerror() = _Aibotdataerror;
  
}
