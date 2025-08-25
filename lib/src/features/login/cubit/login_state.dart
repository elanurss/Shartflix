import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(String message) = _Error;
}

extension LoginStateX on LoginState {
  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
  bool get isSuccess => maybeWhen(success: () => true, orElse: () => false);
  String? get errorOrNull => whenOrNull(error: (msg) => msg);
}
