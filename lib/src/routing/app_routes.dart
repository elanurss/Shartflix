class AppRoutes {
  const AppRoutes._();

  static const AppRoute splashScreen = AppRoute(name: 'SplashScreen', path: '/splashScreen');

  static const AppRoute login = AppRoute(name: 'Login', path: '/login');

  static const AppRoute register = AppRoute(name: 'Register', path: '/register');

  static const AppRoute profile = AppRoute(name: 'Profile', path: '/profile');

  static const AppRoute homePage = AppRoute(name: 'HomePage', path: '/homePage');
}

class AppRoute {
  const AppRoute({required this.name, required this.path});
  final String name;
  final String path;
}
