import 'package:flutter/widgets.dart';

class CachingVsReconstructingPage extends StatelessWidget {
  const CachingVsReconstructingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget();
  }
}

class ParentWidget extends StatelessWidget {
  final Widget child;
  ParentWidget({Key key})
      : child = ChildWidget(/*...*/),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // or some other widgets that define the ui
      child: ChildWidget(/*...*/),
    );
  }
}

class ChildWidget extends StatelessWidget {
  ChildWidget({Key key}) : super(key: key); // no constant

  @override
  Widget build(BuildContext context) {
    /*
     * returns some Widget
     */
  }
}
