import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/router.dart';
import '../../../../core/constants/dimens.dart';
import '../../../../core/snackbar/snackbar.dart';
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
        _passwordController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SignUp'), centerTitle: true),
      body: Padding(
        padding: Dimens().mediumEdgestInset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                    break;
                  case SignUpRequestStateError():
                    WidgetsBinding.instance.addPostFrameCallback((_) {
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
                      context.replaceNamed(Routes.homeScreen);
                    });
                    break;
                }
                return ElevatedButton(
                  onPressed: shouldShowLoginButton() && !isLoading
                      ? () {
                          ref
                              .read(provider.notifier)
                              .attemptToSignUp(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                        }
                      : null,
                  child: const Text('Sign Up'),
                );
              },
            ),
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
                  borderRadius: BorderRadius.circular(16),
                ),
                side: const BorderSide(color: Color(0xFF007BFF)),
                foregroundColor: const Color(0xFF007BFF),
              ),
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
