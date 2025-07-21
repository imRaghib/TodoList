import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_demo/features/auth/domain/repositories/interface/auth_respository.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../../domain/entities/user_profile/user_profile_state.dart';

part 'user_profile_notifier.g.dart';

@riverpod
class UserProfileNotifier extends _$UserProfileNotifier {
  @override
  UserProfileState build() {
    state = const UserProfileStateInitial(initialState: InitialState());
    return state;
  }

  Future getUserProfileById() async {
    state = const UserProfileStateLoading(loading: LoadingState());

    final result = await authRepository.getUserById();

    result.fold(
      (left) {
        state = UserProfileStateError(
          error: ErrorState(message: left.message.toString()),
        );
      },
      (right) {
        state = UserProfileStateData(data: right);
      },
    );
  }
}
