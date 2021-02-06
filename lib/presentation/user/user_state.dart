import 'package:flutter_playground/domain/user.dart';
import 'package:flutter_playground/infrastructure/repositories/user/user_repository.dart';
import 'package:flutter_playground/infrastructure/repositories/user/value_failure.dart';
import 'package:flutter_riverpod/all.dart';

import '../../providers.dart';

class UserState {
  const UserState();
}

class UserInitialState extends UserState {
  const UserInitialState();
}

class UserLoadingState extends UserState {
  const UserLoadingState();
}

class UserLoadedState extends UserState {
  final User user;
  const UserLoadedState(this.user);
}

class UserErrorState extends UserState {
  final ValueFailure failure;
  const UserErrorState(this.failure);
}

class UserStateNotifier extends StateNotifier<UserState> {
  final UserRepository _userRepository;

  UserStateNotifier(this._userRepository) : super(const UserInitialState());

  void loadUser() async {
    state = const UserLoadingState();
    final userOrFailure = await _userRepository.getRandomUser();
    state =
        userOrFailure.fold((l) => UserLoadedState(l), (r) => UserErrorState(r));
  }

  void reset() {
    state = const UserInitialState();
  }
}

final userStateNotifierProvider = StateNotifierProvider(
    (ref) => UserStateNotifier(ref.read(userRepositoryProvider)));
