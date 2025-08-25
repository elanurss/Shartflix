import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success() = _Success;
  const factory RegisterState.error(String message) = _Error;
}

extension RegisterStateX on RegisterState {
  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isSuccess => maybeWhen(success: () => true, orElse: () => false);

  String? get errorOrNull => maybeWhen(error: (msg) => msg, orElse: () => null);
}
