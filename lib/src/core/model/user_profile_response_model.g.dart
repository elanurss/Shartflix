// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileResponseModel _$UserProfileResponseModelFromJson(
  Map<String, dynamic> json,
) => _UserProfileResponseModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  photoUrl: json['photoUrl'] as String?,
  token: json['token'] as String?,
);

Map<String, dynamic> _$UserProfileResponseModelToJson(
  _UserProfileResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'photoUrl': instance.photoUrl,
  'token': instance.token,
};
