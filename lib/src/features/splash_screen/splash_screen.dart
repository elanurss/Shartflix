import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import '../../design_system/shartflix_colors.dart';
import '../../routing/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final storage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    navigateNext();
  }

  Future<void> navigateNext() async {
    await Future.delayed(const Duration(seconds: 2));
    final token = await storage.read(key: 'token');

    if (!mounted) return;
    if (token != null) {
      context.go(AppRoutes.homePage.path);
    } else {
      context.go(AppRoutes.login.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShartflixColors.white,
      body: Center(
        child: Lottie.asset(
          'assets/images/SinFlixLogo.json',
          height: MediaQuery.sizeOf(context).height,
          fit: BoxFit.fill,
          repeat: false,
        ),
      ),
    );
  }
}
