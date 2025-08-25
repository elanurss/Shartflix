import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({required Response response, required Data data}) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({String? id, String? dataId, String? name, String? email, String? photoUrl, String? token}) =
      _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Response with _$Response {
  const factory Response({required int code, required String message}) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}
