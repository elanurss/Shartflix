import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../core/network/api_client.dart';
import '../core/repository/user_repository.dart';
import '../features/home/cubit/home_cubit.dart';
import '../features/home/page/home_page.dart';
import '../features/login/page/login_page.dart';
import '../features/profile/cubit/profile_cubit.dart';
import '../features/profile/page/profile_form.dart';
import '../features/register/pages/register_page.dart';
import '../features/splash_screen/splash_screen.dart';

class AppRouter {
  bool isFirstLaunchHomePage = true;
  final String initialRoute;
  AppRouter({required this.initialRoute});

  late final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: initialRoute,
    routes: [
      // Splash Screen route
      GoRoute(path: '/splashScreen', name: 'SplashScreen', builder: (context, state) => const SplashScreen()),

      // Login route
      GoRoute(path: '/login', name: 'Login', builder: (context, state) => const LoginPage()),

      // Register route
      GoRoute(path: '/register', name: 'Register', builder: (context, state) => const RegisterPage()),

      // Profile route
      GoRoute(
        path: '/profile',
        name: 'Profile',
        builder: (context, state) {
          final homeCubit = context.read<HomeCubit>();
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(value: homeCubit),
              BlocProvider<ProfileCubit>(create: (_) => ProfileCubit(userRepository: UserRepository(ApiClient()))),
            ],
            child: const ProfileForm(),
          );
        },
      ),

      // Home Page route
      GoRoute(path: '/homePage', name: 'HomePage', builder: (context, state) => const HomePage()),
    ],
  );
}
