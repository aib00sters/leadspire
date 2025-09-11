part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.error({required String errorMessage}) = _Error;
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.success(
      {required HomePageModel homePageModel,
      required String userName,
      required String profilePic,
      required CategoriesDetailsModel data,
      }) = _Success;
}
