import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'pages/stackoverflow_questions/where_does_the_index_come_from.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Q_WHERE_DOES_THE_INDEX_COME_FROM());
  }
}
