import 'dart:math';

import 'package:agroqueretaro/utils/const.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  final Size screenSize;
  final bool isPinkBox;
  const BackgroundGradient({
    Key key,
    @required this.screenSize,
    this.isPinkBox
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.6),
                end: FractionalOffset(0.0, 1.0),
                colors: [Consts.blue, Consts.darkBlue])));
    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: screenSize.height * 0.45,
        width: screenSize.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Consts.darkPink,
              Consts.pink,
            ]
          )
        ),
      ),
    );
    return Stack(
      children: <Widget>[
        gradient,
        isPinkBox && isPinkBox != null ? Positioned(top:-100 ,child: pinkBox):Container(),
      ],
    );
  }
}
