import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/config/router.dart';
import '../../../../core/constants/dimens.dart';
import '../../../../core/snackbar/snackbar.dart';
import '../../../../core/utils/functions.dart';
import '../../domain/entities/signup/sign_up_request_state.dart';
import '../notifier/signup/signup_notifier.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool shouldShowLoginButton() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _imageFile != null) {
      return true;
    }
    return false;
  }

  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Sign Up',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: Padding(
        padding: Dimens().largeEdgestInset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_imageFile != null)
              Container(
                padding: const EdgeInsets.all(16),
                height: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.transparent, // or any background color
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // Optional: rounded corners
                ),
                child: Image.file(_imageFile!, fit: BoxFit.cover),
              )
            else
              GestureDetector(
                onTap: () => _pickImage(ImageSource.gallery),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.transparent, // or any background color
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(
                      12,
                    ), // Optional: rounded corners
                  ),
                  child: Icon(Icons.upload_file),
                ),
              ),

            const SizedBox(height: 20),

            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              // validator: _validateEmail,
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
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
                      router.pop();
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
                              .read(provider.notifier)
                              .attemptToSignUp(
                                email: _emailController.text,
                                password: _passwordController.text,
                                imagePath: _imageFile!,
                              );
                        }
                      : null,
                  child: const Text('Sign Up'),
                );
              },
            ),
            const SizedBox(height: 18),
            Divider(),
            const SizedBox(height: 28),
            const Center(
              child: Text(
                'Already have an account?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),

            OutlinedButton(
              onPressed: () {
                context.replaceNamed(Routes.signInScreen);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
