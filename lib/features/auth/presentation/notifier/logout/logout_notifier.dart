import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../../domain/entities/logout/logout_state.dart';
import '../../../domain/repositories/interface/auth_respository.dart';

part 'logout_notifier.g.dart';

@riverpod
class LogoutNotifier extends _$LogoutNotifier {
  Future logoutUser() async {
    state = const LogoutStateLoading(loading: LoadingState());

    final result = await authRepository.logoutUser();

    if (result == true) {
      state = LogoutStateData(data: result);
    } else {
      state = LogoutStateError(
        error: ErrorState(message: "something_went_wrong"),
      );
    }
  }

  @override
  LogoutState build() {
    state = const LogoutStateInitial(initialState: InitialState());
    return state;
  }
}
