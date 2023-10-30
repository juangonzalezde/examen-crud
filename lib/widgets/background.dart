import 'package:flutter/material.dart';
import '/widgets/widgets.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        AuthBackgorundC1(),
        SafeArea(
          child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 5),
        )),
        child,
      ]),
    );
  }
}
