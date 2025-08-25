import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shartflix/src/core/network/api_client.dart';
import '../../../core/repository/user_repository.dart';
import '../cubit/login_cubit.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(userRepository: UserRepository(ApiClient())),
      child: Scaffold(body: const LoginForm()),
    );
  }
}
