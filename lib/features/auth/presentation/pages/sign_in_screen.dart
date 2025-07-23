import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/router.dart';
import '../../../../core/constants/dimens.dart';
import '../../../../core/snackbar/snackbar.dart';
import '../../../../core/utils/functions.dart';
import '../../domain/entities/signin/sign_in_request_state.dart';
import '../notifier/signin/signin_notifier.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _emailController = TextEditingController(text: 'raghib123@gmail.com');
  final _passwordController = TextEditingController(text: '123456');

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
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Sign In',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: Padding(
        padding: Dimens().largeEdgestInset,
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
            const SizedBox(height: 28),

            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final provider = signinNotifierProvider;
                final watcher = ref.watch(provider);

                bool isLoading = false;

                switch (watcher) {
                  case SignInRequestStateInitial():
                    break;
                  case SignInRequestStateLoading():
                    isLoading = true;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Functions.showLoading(context);
                    });
                    break;
                  case SignInRequestStateError():
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      router.pop();
                      showSnackBar(
                        message: watcher.error.message,
                        context: context,
                      );
                    });
                    ref.invalidate(signinNotifierProvider);
                    break;
                  case SignInRequestStateData():
                    ref.invalidate(signinNotifierProvider);
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
                              .attemptToSignIn(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                        }
                      : null,
                  child: const Text('Log In'),
                );
              },
            ),
            const SizedBox(height: 18),
            Divider(),
            const SizedBox(height: 28),
            const Center(child: Text('Already have an account?')),

            const SizedBox(height: 8),

            OutlinedButton(
              onPressed: () {
                context.replaceNamed(Routes.signUpScreen);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
