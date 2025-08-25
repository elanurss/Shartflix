import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../core/repository/user_repository.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required UserRepository userRepository})
    : _userRepository = userRepository,
      super(const LoginState.initial());

  final UserRepository _userRepository;

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    try {
      final result = await _userRepository.login(email, password);

      if (result.response.code != 200) {
        emit(LoginState.error(result.response.message));
      } else {
        await FlutterSecureStorage().write(key: 'token', value: result.data.token);
        emit(LoginState.success());
      }
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}
