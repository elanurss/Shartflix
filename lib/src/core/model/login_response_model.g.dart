// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{'response': instance.response, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  id: json['id'] as String?,
  dataId: json['dataId'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  photoUrl: json['photoUrl'] as String?,
  token: json['token'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'id': instance.id,
  'dataId': instance.dataId,
  'name': instance.name,
  'email': instance.email,
  'photoUrl': instance.photoUrl,
  'token': instance.token,
};

_Response _$ResponseFromJson(Map<String, dynamic> json) => _Response(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$ResponseToJson(_Response instance) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
};
