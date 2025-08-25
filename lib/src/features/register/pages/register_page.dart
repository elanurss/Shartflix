import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/network/api_client.dart';
import '../../../core/repository/user_repository.dart';
import '../cubit/register_cubit.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterCubit(userRepository: UserRepository(ApiClient())),
      child: const RegisterForm(),
    );
  }
}
