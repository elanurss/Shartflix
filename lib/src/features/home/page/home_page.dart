import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/network/api_client.dart';
import '../../../core/repository/movie_repository.dart';
import '../../../core/repository/user_repository.dart';
import '../cubit/home_cubit.dart';
import '../widgets/home_page_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) =>
          HomeCubit(movieRepository: MovieRepository(ApiClient()), userRepository: UserRepository(ApiClient()))
            ..fetchMovies(page: 1),
      child: const HomePageForm(),
    );
  }
}
