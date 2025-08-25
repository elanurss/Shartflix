import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../l10n/l10n.dart';
import '../../../design_system/shartflix_colors.dart';
import '../../../design_system/shartflix_theme.dart';
import '../../../gen/assets.gen.dart';
import '../../../routing/app_router.dart';
import '../../../routing/app_routes.dart';
import '../cubit/register_cubit.dart';
import '../cubit/register_state.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = ShartflixTheme.buildTheme();
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) async {
        if (state.isSuccess) {
          await context.read<AppRouter>().router.pushReplacementNamed(AppRoutes.profile.name);
        }

        if (state.errorOrNull != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorOrNull!)));
        }
      },

      builder: (context, state) {
        return Theme(
          data: theme,
          child: Scaffold(
            backgroundColor: ShartflixColors.black,
            body: Padding(
              padding: const EdgeInsets.all(45),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(S.of(context)!.welcome, style: theme.textTheme.headlineLarge),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          "Tempus varius a vitae interdum id tortor elementum tristique eleifend at.",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(height: 40),

                      _buildTextField(
                        controller: _nameController,
                        label: S.of(context)!.fullName,
                        iconPath: Assets.icons.addUser,
                      ),
                      const SizedBox(height: 13),

                      _buildTextField(
                        controller: _emailController,
                        label: S.of(context)!.email,
                        iconPath: Assets.icons.email,
                      ),
                      const SizedBox(height: 13),

                      _buildTextField(
                        controller: _passController,
                        label: S.of(context)!.password,
                        iconPath: Assets.icons.password,
                        suffixIconPath: Assets.icons.hide,
                        obscureText: true,
                      ),
                      const SizedBox(height: 13),

                      _buildTextField(
                        controller: _confirmPassController,
                        label: S.of(context)!.repeatPassword,
                        iconPath: Assets.icons.password,
                        suffixIconPath: Assets.icons.hide,
                        obscureText: true,
                      ),

                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          children: [
                            Text(S.of(context)!.userAgreement, style: theme.textTheme.bodySmall),
                            Text(
                              S.of(context)!.agreeAndAccept,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: ShartflixColors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),

                            Text(S.of(context)!.pleaseReadAgreement, style: theme.textTheme.bodySmall),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      SizedBox(
                        width: 354,
                        height: 53,
                        child: ElevatedButton(
                          onPressed: () {
                            final password = _passController.text;
                            final confirmPassword = _confirmPassController.text;

                            if (password != confirmPassword) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(SnackBar(content: Text(S.of(context)!.passwordsDoNotMatch)));
                              return;
                            }

                            context.read<RegisterCubit>().register(
                              name: _nameController.text.trim(),
                              email: _emailController.text.trim(),
                              password: password,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ShartflixColors.crimsonRed,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                            textStyle: theme.textTheme.headlineSmall,
                          ),
                          child: Text(S.of(context)!.signUp),
                        ),
                      ),
                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _socialButton(Assets.icons.google),
                          const SizedBox(width: 8),
                          _socialButton(Assets.icons.apple),
                          const SizedBox(width: 8),
                          _socialButton(Assets.icons.facebook),
                        ],
                      ),
                      const SizedBox(height: 32),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.of(context)!.alreadyHaveAccount, style: theme.textTheme.bodySmall),
                          TextButton(
                            onPressed: () async {
                              await context.read<AppRouter>().router.pushReplacementNamed(AppRoutes.login.name);
                            },
                            child: Text(
                              S.of(context)!.login,
                              style: theme.textTheme.bodySmall?.copyWith(color: ShartflixColors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String iconPath,
    String? suffixIconPath,
    bool obscureText = false,
  }) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ShartflixColors.white.withValues(alpha: 0.1)),
    );

    return Container(
      constraints: const BoxConstraints(minHeight: 53, maxHeight: 53, minWidth: 324, maxWidth: 324),
      decoration: BoxDecoration(
        color: ShartflixColors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: ShartflixColors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: ShartflixTheme.buildTheme().textTheme.bodySmall,
          prefixIcon: SizedBox(
            width: 13,
            height: 17,
            child: Padding(padding: EdgeInsets.only(left: 26, right: 7), child: SvgPicture.asset(iconPath)),
          ),
          suffixIcon: suffixIconPath != null
              ? SizedBox(
                  width: 20,
                  height: 17,
                  child: Padding(
                    padding: EdgeInsets.only(right: 30, top: 16, bottom: 16),
                    child: SvgPicture.asset(suffixIconPath),
                  ),
                )
              : null,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }

  Widget _socialButton(String iconPath) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: ShartflixColors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: ShartflixColors.white.withValues(alpha: 0.1)),
      ),
      child: Center(child: SvgPicture.asset(iconPath, width: 20, height: 20)),
    );
  }
}
