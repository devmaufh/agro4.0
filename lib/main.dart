
import 'package:agroqueretaro/pages/home_page2.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage2(),
      },
    );
  }
}