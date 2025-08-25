import 'dart:io';
import 'package:bloc/bloc.dart';
import '../../../core/model/favorite_movie_response_model.dart';
import '../../../core/repository/movie_repository.dart';
import '../../../core/repository/user_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required MovieRepository movieRepository, required UserRepository userRepository})
    : _movieRepository = movieRepository,
      _userRepository = userRepository,
      super(const HomeState.initial());

  final MovieRepository _movieRepository;
  final UserRepository _userRepository;
  int _currentPage = 1;

  void loadMore() {
    final pagination = state.paginationOrNull;
    if (pagination == null || _currentPage >= (pagination.maxPage ?? 0)) return;
    state.maybeMap(success: (s) => emit(s.copyWith(isLoadingMore: true)), orElse: () {});
    fetchMovies(page: _currentPage + 1, isLoadMore: true);
  }

  Future<void> fetchMovies({required int page, bool isLoadMore = false}) async {
    try {
      final response = await _movieRepository.movieList(page: page);

      final newMovies = response.data?.movies ?? [];
      final newPagination = response.data?.pagination;

      state.maybeWhen(
        success: (selectedIndex, movies, favoriteMovies, actionLoading, userProfile, isLoadingMore, pagination) {
          final updatedMovies = isLoadMore ? [...?movies, ...newMovies] : newMovies;
          emit(
            HomeState.success(
              selectedIndex: selectedIndex,
              movies: updatedMovies,
              favoriteMovies: favoriteMovies,
              actionLoading: actionLoading,
              userProfileResponseModel: userProfile,
              isLoadingMore: false,
              pagination: newPagination,
            ),
          );
          _currentPage = page;
        },
        orElse: () {
          emit(HomeState.success(movies: newMovies, pagination: newPagination));
          _currentPage = page;
        },
      );
    } catch (e) {
      emit(HomeState.error(message: e.toString()));
    }
  }

  void changeTab(int index) {
    state.maybeMap(
      success: (s) => emit(s.copyWith(selectedIndex: index)),
      orElse: () {},
    );
  }

  Future<void> favoriteMovie(String movieId) async {
    state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});

    try {
      final datas = state.moviesOrNull?.firstWhere((m) => m.id == movieId);
      final modelTemp = FavoriteMovieResponseModel(
        movie: Movie(
          id: datas?.id,
          actors: datas?.actors,
          awards: datas?.awards,
          comingSoon: datas?.comingSoon,
          country: datas?.country,
          director: datas?.director,
          genre: datas?.genre,
          imdbRating: datas?.imdbRating,
          imdbVotes: datas?.imdbVotes,
          isFavorite: !(datas?.isFavorite ?? false),
          language: datas?.language,
          metascore: datas?.metascore,
          plot: datas?.plot,
          poster: datas?.poster,
          rated: datas?.rated,
          released: datas?.released,
          runtime: datas?.runtime,
          title: datas?.title,
          type: datas?.type,
          writer: datas?.writer,
          year: datas?.year,
          images: datas?.images,
        ),
      );

      final result = await _movieRepository.favoriteMovie(favoriteId: movieId);

      if (result.code == 200) {
        state.maybeMap(
          success: (s) {
            final isAlreadyFavorite = s.favoriteMovies?.any((fm) => fm.movie?.id == movieId) ?? false;

            final updatedFavorites = [
              if (!isAlreadyFavorite) modelTemp,
              if (s.favoriteMovies != null) ...s.favoriteMovies!.where((fm) => fm.movie?.id != movieId),
            ];

            emit(
              s.copyWith(
                movies: s.movies?.map((m) => m.id == movieId ? m.copyWith(isFavorite: !m.isFavorite!) : m).toList(),
                favoriteMovies: updatedFavorites,
                actionLoading: false,
              ),
            );
          },
          orElse: () {},
        );
      } else {
        state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: false)), orElse: () {});
      }
    } catch (e) {
      state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: false)), orElse: () {});
    }
  }

  Future<void> uploadPhoto(File file) async {
    state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});

    try {
      final result = await _userRepository.uploadPhoto(file);
      if (result.code == 200) {
        state.maybeMap(
          success: (s) => emit(s.copyWith(userProfileResponseModel: result.data, actionLoading: false)),
          orElse: () {},
        );
      } else {
        emit(HomeState.error(message: result.message));

        state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: false)), orElse: () {});
      }
    } catch (e) {
      emit(HomeState.error(message: e.toString()));
    }
  }

  Future<void> getProfile() async {
    state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});

    try {
      final result = await _userRepository.profile();
      if (result.code == 200) {
        state.maybeMap(
          success: (s) => emit(s.copyWith(userProfileResponseModel: result.data, actionLoading: false)),
          orElse: () {},
        );
      } else {
        state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});
      }
    } catch (e) {
      state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});
    }
  }

  Future<void> getFavoriteMovies() async {
    state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});

    try {
      final result = await _movieRepository.getFavoriteMovies();
      if (result.code == 200) {
        state.maybeMap(
          success: (s) => emit(s.copyWith(favoriteMovies: result.data, actionLoading: false)),
          orElse: () {},
        );
      } else {
        state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});
      }
    } catch (e) {
      state.maybeMap(success: (s) => emit(s.copyWith(actionLoading: true)), orElse: () {});
    }
  }
}
