import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shartflix/src/core/repository/user_repository.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required UserRepository userRepository})
    : _userRepository = userRepository,
      super(const RegisterState.initial());

  final UserRepository _userRepository;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> register({required String name, required String email, required String password}) async {
    emit(const RegisterState.loading());

    try {
      final result = await _userRepository.register(name: name, email: email, password: password);

      if (result.response.code != 200) {
        emit(RegisterState.error(result.response.message));
      } else {
        await _storage.write(key: 'token', value: result.data.token);
        emit(const RegisterState.success());
      }
    } catch (e) {
      emit(RegisterState.error('Kayıt işlemi sırasında bir hata oluştu: $e'));
    }
  }
}
