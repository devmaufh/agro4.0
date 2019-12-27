import 'package:flutter/material.dart';
class HeadersText extends StatelessWidget {
  final String h1;
  final String h2;
  const HeadersText({
    Key key,
    @required this.h1,
    @required this.h2,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(h1, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text(h2, style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}