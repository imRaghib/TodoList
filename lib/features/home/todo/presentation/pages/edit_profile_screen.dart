import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/config/router.dart';
import '../../../../../core/constants/dimens.dart';
import '../../../../../core/snackbar/snackbar.dart';
import '../../../../../core/utils/functions.dart';
import '../../../../auth/domain/entities/signup/sign_up_request_state.dart';
import '../../../../auth/domain/entities/user_profile/user_profile_state.dart';
import '../../../../auth/presentation/notifier/signup/signup_notifier.dart';
import '../../../../auth/presentation/notifier/user_profile/user_profile_notifier.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _emailController = TextEditingController();
  //   _passwordController = TextEditingController();
  //
  //   // Delay provider calls until after the first frame
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     // ✅ SAFE: now the widget is built
  //     ref.read(userProfileNotifierProvider.notifier).getUserProfileById();
  //
  //     // ✅ SAFE: now allowed to use ref.listen
  //     ref.listen<UserProfileState>(userProfileNotifierProvider, (
  //       previous,
  //       next,
  //     ) {
  //       if (next is UserProfileStateData && next.data != null) {
  //         _emailController.text = next.data!.email ?? '';
  //       }
  //     });
  //   });
  // }

  bool shouldShowLoginButton() {
    if (_imageFile != null) {
      return true;
    }
    return false;
  }

  File? _imageFile;
  String? urlImage;
  bool setImageFlag = true;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void clearImage() {
    setState(() {
      _imageFile = null;
      urlImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Edit Profile',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),

      body: Padding(
        padding: Dimens().largeEdgestInset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Consumer(
              builder: (context, ref, child) {
                final watcher = ref.watch(userProfileNotifierProvider);
                switch (watcher) {
                  case UserProfileStateInitial():
                    break;

                  case UserProfileStateLoading():
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Functions.showLoading(context);
                    });
                    break;
                  case UserProfileStateError():
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      router.pop();
                      showSnackBar(
                        message: watcher.error.message,
                        context: context,
                      );
                    });

                    ref.invalidate(userProfileNotifierProvider);
                    break;

                  case UserProfileStateData():
                    final data = watcher.data;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _emailController.text = data?.email ?? '';
                      // _passwordController.text = data.
                    });
                    if (setImageFlag) {
                      urlImage = data?.avatar_url;
                      setImageFlag = false;
                    }
                    break;
                }
                return urlImage != null || _imageFile != null
                    ? Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            height: MediaQuery.of(context).size.width * 0.8,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                              color:
                                  Colors.transparent, // or any background color
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(
                                12,
                              ), // Optional: rounded corners
                            ),
                            child: _imageFile != null
                                ? Image.file(_imageFile!, fit: BoxFit.cover)
                                : Image.network(urlImage!, fit: BoxFit.cover),
                          ),
                          Positioned(
                            right: 15,
                            top: 10,
                            child: IconButton(
                              onPressed: () => clearImage(),
                              icon: Icon(Icons.close, size: 30),
                            ),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: () => _pickImage(ImageSource.gallery),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color:
                                Colors.transparent, // or any background color
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Optional: rounded corners
                          ),
                          child: Icon(Icons.upload_file),
                        ),
                      );
              },
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _emailController,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Change Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 24),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final provider = signupNotifierProvider;
                final watcher = ref.watch(provider);

                bool isLoading = false;

                switch (watcher) {
                  case SignUpRequestStateInitial():
                    break;
                  case SignUpRequestStateLoading():
                    isLoading = true;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Functions.showLoading(context);
                    });
                    break;
                  case SignUpRequestStateError():
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      router.pop();
                      showSnackBar(
                        message: watcher.error.message,
                        context: context,
                      );
                    });
                    ref.invalidate(signupNotifierProvider);
                    break;
                  case SignUpRequestStateData():
                    ref.invalidate(signupNotifierProvider);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context, rootNavigator: true).pop();
                      context.replaceNamed(Routes.homeScreen);
                    });
                    break;
                }
                return ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: shouldShowLoginButton() && !isLoading
                      ? () {
                          ref
                              .read(userProfileNotifierProvider.notifier)
                              .updateProfileData(_imageFile);
                          // ref
                          //     .read(provider.notifier)
                          //     .attemptToSignUp(
                          //       email: _emailController.text,
                          //       password: _passwordController.text,
                          //       imagePath: _imageFile!,
                          //     );
                        }
                      : null,
                  child: const Text('Save'),
                );
              },
            ),
            // const SizedBox(height: 18),
            // Divider(),
            // const SizedBox(height: 28),
            // const Center(
            //   child: Text(
            //     'Already have an account?',
            //     style: TextStyle(color: Colors.grey),
            //   ),
            // ),
            // const SizedBox(height: 8),
            //
            // OutlinedButton(
            //   onPressed: () {
            //     context.replaceNamed(Routes.signInScreen);
            //   },
            //   style: OutlinedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: const Text('Log In'),
            // ),
          ],
        ),
      ),
    );
  }
}
