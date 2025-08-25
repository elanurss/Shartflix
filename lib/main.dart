import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'l10n/l10n.dart';
import 'src/core/network/api_client.dart';
import 'src/core/repository/movie_repository.dart';
import 'src/core/repository/user_repository.dart';
import 'src/design_system/shartflix_theme.dart';
import 'src/features/home/cubit/home_cubit.dart';
import 'src/features/login/cubit/login_cubit.dart';
import 'src/features/profile/cubit/profile_cubit.dart';
import 'src/routing/app_router.dart';
import 'src/routing/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final token = await FlutterSecureStorage().read(key: 'token');
  final initialRoute = token != null ? AppRoutes.splashScreen.path : AppRoutes.login.path;

  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialRoute});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(initialRoute: initialRoute);

    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(create: (_) => LoginCubit(userRepository: UserRepository(ApiClient()))),
        BlocProvider<HomeCubit>(
          create: (_) =>
              HomeCubit(movieRepository: MovieRepository(ApiClient()), userRepository: UserRepository(ApiClient())),
        ),
        BlocProvider<ProfileCubit>(create: (_) => ProfileCubit(userRepository: UserRepository(ApiClient()))),
        Provider<AppRouter>.value(value: appRouter),
      ],
      child: MaterialApp.router(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('tr')],
        debugShowCheckedModeBanner: false,
        title: 'Shartflix',
        theme: ShartflixTheme.buildTheme(),
        routerConfig: appRouter.router,
      ),
    );
  }
}
