import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Row(
            children: <Widget>[
              Text("test"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(children: [
                    ListTile(
                      leading: Icon(Icons.title),
                      title: Text("some text"),
                    ),
                  ]),
                  Row(
                    children: [IconButton(icon: Icon(Icons.title))],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
