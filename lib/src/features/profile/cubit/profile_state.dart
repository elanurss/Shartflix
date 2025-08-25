import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/model/user_profile_response_model.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success({
    UserProfileResponseModel? userProfileResponseModel,
    @Default(false) bool loading,
  }) = _Success;
  const factory ProfileState.error(String message) = _Error;

  bool get isLoading => this is _Loading;
  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;

  String? get errorOrNull => this is _Error ? (this as _Error).message : null;
  UserProfileResponseModel? get userProfileResponseModelOrNull =>
      this is _Success ? (this as _Success).userProfileResponseModel : null;
}
