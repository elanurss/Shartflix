import '../constants/api_endpoints.dart';
import '../model/base_model.dart';
import '../model/favorite_movie_response_model.dart';
import '../model/movie_response_model.dart';
import '../network/api_client.dart';

class MovieRepository {
  final ApiClient apiClient;

  MovieRepository(this.apiClient);

  Future<BaseResponse<MovieResponseModel>> movieList({int page = 1}) async {
    return apiClient.get<BaseResponse<MovieResponseModel>>(
      path: ApiEndpoints.movieList,
      queryParameters: {'page': page},
      fromJson: (json) => BaseResponse<MovieResponseModel>.fromJson(json, (data) => MovieResponseModel.fromJson(data)),
    );
  }

  Future<BaseResponse<FavoriteMovieResponseModel>> favoriteMovie({required String favoriteId}) async {
    return apiClient.post<BaseResponse<FavoriteMovieResponseModel>>(
      path: '${ApiEndpoints.movieFavorite}/$favoriteId',
      fromJson: (json) =>
          BaseResponse<FavoriteMovieResponseModel>.fromJson(json, (data) => FavoriteMovieResponseModel.fromJson(data)),
    );
  }

  Future<BaseResponse<List<FavoriteMovieResponseModel>>> getFavoriteMovies() async {
    return apiClient.get<BaseResponse<List<FavoriteMovieResponseModel>>>(
      path: ApiEndpoints.movieFavorites,
      fromJson: (json) => BaseResponse<List<FavoriteMovieResponseModel>>.fromJson(
        json,
        (data) =>
            (data as List<dynamic>).map((e) => FavoriteMovieResponseModel.fromJson(e as Map<String, dynamic>)).toList(),
      ),
    );
  }
}
