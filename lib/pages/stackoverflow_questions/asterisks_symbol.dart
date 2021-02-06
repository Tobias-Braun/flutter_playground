import 'package:flutter/material.dart';

class Q_MAIN_Asterisks extends StatelessWidget {
  const Q_MAIN_Asterisks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(64.0),
      child: Center(child: FormFieldWithAsterisk()),
    ));
  }
}

class FormFieldWithAsterisk extends StatelessWidget {
  const FormFieldWithAsterisk({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "*",
          labelStyle: TextStyle(color: Colors.red),
          hintText: "type here...",
          hintStyle: TextStyle(color: Colors.black)),
    );
  }
}
