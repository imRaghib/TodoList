import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../../domain/entities/signin/sign_in_request_state.dart';
import '../../../domain/entities/signin/signin_request.dart';
import '../../../domain/repositories/interface/auth_respository.dart';

part 'signin_notifier.g.dart';

@riverpod
class SigninNotifier extends _$SigninNotifier {
  Future attemptToSignIn({
    required String email,
    required String password,
  }) async {
    print("calling attept to signin");
    state = const SignInRequestStateLoading(loading: LoadingState());
    final singInRequest = SigninRequest(email: email, password: password);
    final result = await authRepository.attemptToSignIn(
      signinRequest: singInRequest,
    );
    result.fold(
      (left) {
        state = SignInRequestStateError(
          error: ErrorState(message: left.toString()),
        );
      },
      (right) async {
        state = SignInRequestStateData(data: Right(right));
      },
    );
  }

  @override
  SignInRequestState build() {
    state = const SignInRequestStateInitial(initialState: InitialState());
    return state;
  }
}
