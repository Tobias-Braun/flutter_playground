import 'package:flutter/material.dart';
import 'package:flutter_playground/presentation/user/user_state.dart';
import 'package:flutter_playground/presentation/user/user_widget.dart';
import 'package:flutter_riverpod/all.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final user = watch(userStateNotifierProvider);
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Playground")),
        body: ProviderListener(
          provider: userStateNotifierProvider.state,
          onChange: (context, state) {
            if (state is UserErrorState) {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text(state.failure.reason)));
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              UserDisplayWidget(),
              RaisedButton(
                onPressed: user.loadUser,
                child: Text("Load User"),
              )
            ],
          ),
        ));
  }
}
