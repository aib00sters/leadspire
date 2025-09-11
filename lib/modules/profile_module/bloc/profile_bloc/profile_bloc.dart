import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      try {
        emit(const ProfileState.initial());
        if (event is _LoadProfile) {
          final name = await IsarServices().getName();
          final userName = await IsarServices().getUserName();
          final profilePic = await IsarServices().getProfilePic();
          final ageGroup = await IsarServices().getAgeGroup();
          final gender = await IsarServices().getGender();
          emit(ProfileState.loadProfileSuccess(
            name: name,
            profilePic: profilePic,
            userName: userName,
            ageGroup: ageGroup,
            gender: gender,
          ));
        }
      } catch (e) {}
    });
  }
}
