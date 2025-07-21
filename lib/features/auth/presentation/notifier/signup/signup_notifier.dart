import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../../domain/entities/signup/sign_up_request_state.dart';
import '../../../domain/entities/signup/signup_request.dart';
import '../../../domain/repositories/interface/auth_respository.dart';

part 'signup_notifier.g.dart';

@riverpod
class SignupNotifier extends _$SignupNotifier {
  Future attemptToSignUp({
    required String email,
    required String password,
  }) async {
    state = const SignUpRequestStateLoading(loading: LoadingState());

    final singUpRequest = SignupRequest(email: email, password: password);

    final result = await authRepository.attemptToRegister(
      signupRequest: singUpRequest,
    );
    result.fold(
      (left) {
        state = SignUpRequestStateError(
          error: ErrorState(message: left.toString()),
        );
      },
      (right) {
        state = SignUpRequestStateData(data: Right(right));
      },
    );
  }

  @override
  SignUpRequestState build() {
    state = const SignUpRequestStateInitial(initialState: InitialState());
    return state;
  }
}
