import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_response_model.freezed.dart';
part 'user_profile_response_model.g.dart';

@freezed
abstract class UserProfileResponseModel with _$UserProfileResponseModel {
  const factory UserProfileResponseModel({String? id, String? name, String? email, String? photoUrl, String? token}) =
      _UserProfileResponseModel;

  factory UserProfileResponseModel.fromJson(Map<String, dynamic> json) => _$UserProfileResponseModelFromJson(json);
}
