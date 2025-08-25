class ApiEndpoints {
  static const String login = 'user/login';
  static const String register = 'user/register';
  static const String profile = 'user/profile';
  static const String uploadPhoto = 'user/upload_photo';
  static const String movieFavorite = 'movie/favorite';
  static const String movieFavorites = 'movie/favorites';
  static const String movieList = 'movie/list';
  static String movieFavoriteById(String favoriteId) => 'movie/favorite/$favoriteId';
}
