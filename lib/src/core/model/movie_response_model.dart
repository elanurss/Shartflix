import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_response_model.freezed.dart';
part 'movie_response_model.g.dart';

@freezed
abstract class MovieResponseModel with _$MovieResponseModel {
  const factory MovieResponseModel({List<Movie>? movies, Pagination? pagination}) = _MovieResponseModel;

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) => _$MovieResponseModelFromJson(json);
}

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'id') String? movieId,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Poster') String? poster,
    @JsonKey(name: 'Metascore') String? metascore,
    @JsonKey(name: 'imdbRating') String? imdbRating,
    @JsonKey(name: 'imdbVotes') String? imdbVotes,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'Response') String? response,
    @JsonKey(name: 'Images') List<String>? images,
    @JsonKey(name: 'ComingSoon') bool? comingSoon,
    bool? isFavorite,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({int? totalCount, int? perPage, int? maxPage, int? currentPage}) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
