import 'package:flutter/material.dart';

class Q_WHERE_DOES_THE_INDEX_COME_FROM extends StatelessWidget {
  const Q_WHERE_DOES_THE_INDEX_COME_FROM({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ExampleWidget(),
      )),
    );
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ["a", "b", "c"];

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Text("$index: ${data[index]}"),
              childCount: data.length),
        )
      ],
    );
  }
}
