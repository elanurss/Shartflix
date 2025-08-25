import 'dart:io';
import 'package:bloc/bloc.dart';
import '../../../core/repository/user_repository.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required UserRepository userRepository})
    : _userRepository = userRepository,
      super(const ProfileState.initial());

  final UserRepository _userRepository;

  Future<void> uploadPhoto(File file) async {
    emit(const ProfileState.loading());

    try {
      final result = await _userRepository.uploadPhoto(file);

      if (result.code == 200 && result.data != null) {
        emit(ProfileState.success(userProfileResponseModel: result.data));
      } else {
        emit(ProfileState.error(result.message));
      }
    } catch (e) {
      emit(ProfileState.error(e.toString()));
    }
  }
}
