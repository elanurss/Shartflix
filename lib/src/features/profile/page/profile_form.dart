import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../l10n/l10n.dart';
import '../../../design_system/shartflix_colors.dart';
import '../../../design_system/shartflix_theme.dart';
import '../../../routing/app_router.dart';
import '../../../routing/app_routes.dart';
import '../../home/cubit/home_cubit.dart';
import '../../home/cubit/home_state.dart';
import '../cubit/profile_cubit.dart';
import '../cubit/profile_state.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  File? _imageFile;

  Future<void> _pickAndCropImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        maxWidth: 300,
        maxHeight: 300,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Fotoğrafı Kırp',
            toolbarColor: Colors.black,
            toolbarWidgetColor: Colors.white,
            hideBottomControls: true,
          ),
          IOSUiSettings(title: 'Fotoğrafı Kırp'),
        ],
      );

      if (croppedFile != null) {
        setState(() => _imageFile = File(croppedFile.path));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShartflixTheme.buildTheme();

    return Theme(
      data: theme,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ShartflixColors.black,
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: SizedBox(
                      height: 40,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ShartflixColors.white.withValues(alpha: 0.1)),
                                color: ShartflixColors.white.withValues(alpha: 0.1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ),
                          Center(child: Text(S.of(context)!.profileDetail, style: theme.textTheme.headlineSmall)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Text(
                    S.of(context)!.uploadPhotos,
                    style: theme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Resources out incentivize\nrelaxation floor loss cc.",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 40),

                  GestureDetector(
                    onTap: _pickAndCropImage,
                    child: Container(
                      width: 168,
                      height: 164,
                      decoration: BoxDecoration(
                        color: ShartflixColors.white.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: ShartflixColors.white.withValues(alpha: 0.1)),
                      ),
                      child: _imageFile != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.file(_imageFile!, fit: BoxFit.cover),
                            )
                          : const Center(child: Icon(Icons.add, size: 40, color: Colors.grey)),
                    ),
                  ),

                  const Spacer(),

                  BlocConsumer<ProfileCubit, ProfileState>(
                    listener: (context, state) async {
                      if (state.isLoading) {
                        await context.read<AppRouter>().router.pushReplacementNamed(AppRoutes.homePage.name);
                      }
                    },
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ShartflixColors.crimsonRed,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            ),
                            onPressed: () {
                              if (_imageFile != null) {
                                context.read<ProfileCubit>().uploadPhoto(_imageFile!);
                              }
                            },
                            child: Text(S.of(context)!.continueText),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
