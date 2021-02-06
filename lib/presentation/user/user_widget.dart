import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'package:flutter_playground/presentation/user/user_state.dart';

import '../../exceptions.dart';

class UserDisplayWidget extends ConsumerWidget {
  const UserDisplayWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    print("rebuild");
    final userState = watch(userStateNotifierProvider.state);
    if (userState is UserInitialState) {
      return Container();
    } else if (userState is UserLoadingState) {
      return Center(child: CircularProgressIndicator());
    } else if (userState is UserErrorState) {
      return Center(
          child: Text(userState.failure.reason,
              style: TextStyle(color: Colors.red)));
    } else if (userState is UserLoadedState) {
      final name = userState.user.name;
      return Center(
          child: Text("${name.first} ${name.last}",
              style: TextStyle(color: Colors.green)));
    } else
      throw UnexpectedTypeException(
          "${userState.runtimeType} was not expected.");
  }
}
