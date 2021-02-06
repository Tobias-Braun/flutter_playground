import 'package:flutter/material.dart';

class Q_HOW_DATA extends StatelessWidget {
  const Q_HOW_DATA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<String> exampleFuture =
        Future.delayed(Duration(seconds: 2), () => "value");

    return FutureBuilder(
        future: exampleFuture,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasError) {
            return Text("error");
          } else if (!snapshot.hasData) {
            return Text("loading");
          } else {
            return Text(snapshot.data);
          }
        });
  }
}
