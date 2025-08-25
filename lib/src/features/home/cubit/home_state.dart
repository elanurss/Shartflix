import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/model/movie_response_model.dart';
import '../../../core/model/favorite_movie_response_model.dart' as favorite;
import '../../../core/model/user_profile_response_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({
    @Default(0) int selectedIndex,
    List<Movie>? movies,
    List<favorite.FavoriteMovieResponseModel>? favoriteMovies,
    @Default(false) bool actionLoading,
    UserProfileResponseModel? userProfileResponseModel,
    @Default(false) bool isLoadingMore,
    Pagination? pagination,
  }) = _Success;
  const factory HomeState.error({required String message}) = _Error;

  const HomeState._();

  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;

  List<Movie>? get moviesOrNull => this is _Success ? (this as _Success).movies : null;
  int get selectedIndexOrZero => this is _Success ? (this as _Success).selectedIndex : 0;
  bool get isActionLoading => this is _Success ? (this as _Success).actionLoading : false;
  bool get isLoadingMore => this is _Success ? (this as _Success).isLoadingMore : false;
  Pagination? get paginationOrNull => this is _Success ? (this as _Success).pagination : null;

  List<favorite.FavoriteMovieResponseModel>? get favoriteMoviesOrEmpty =>
      this is _Success ? (this as _Success).favoriteMovies ?? [] : [];
  UserProfileResponseModel? get userProfileResponseModelOrNull =>
      this is _Success ? (this as _Success).userProfileResponseModel : null;
}
