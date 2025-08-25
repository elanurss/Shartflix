import 'dart:io';
import 'package:dio/dio.dart';
import '../constants/api_endpoints.dart';
import '../model/base_model.dart';
import '../model/login_response_model.dart';
import '../model/user_profile_response_model.dart';
import '../network/api_client.dart';

class UserRepository {
  final ApiClient apiClient;

  UserRepository(this.apiClient);

  Future<LoginResponseModel> login(String email, String password) async {
    return apiClient.post<LoginResponseModel>(
      path: ApiEndpoints.login,
      data: {'email': email, 'password': password},
      fromJson: (json) => LoginResponseModel.fromJson(json),
    );
  }

  Future<LoginResponseModel> register({required String name, required String email, required String password}) async {
    return apiClient.post<LoginResponseModel>(
      path: ApiEndpoints.register,
      data: {'name': name, 'email': email, 'password': password},
      fromJson: (json) => LoginResponseModel.fromJson(json),
    );
  }

  Future<BaseResponse<UserProfileResponseModel>> uploadPhoto(File file) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: file.path.split('/').last),
    });

    final response = await apiClient.dio.post(
      ApiEndpoints.uploadPhoto,
      data: formData,
      options: Options(headers: {'Content-Type': 'multipart/form-data'}),
    );

    return BaseResponse<UserProfileResponseModel>.fromJson(
      response.data,
      (data) => UserProfileResponseModel.fromJson(data),
    );
  }

  Future<BaseResponse<UserProfileResponseModel>> profile() async {
    return apiClient.get<BaseResponse<UserProfileResponseModel>>(
      path: ApiEndpoints.profile,
      fromJson: (json) =>
          BaseResponse<UserProfileResponseModel>.fromJson(json, (data) => UserProfileResponseModel.fromJson(data)),
    );
  }
}
