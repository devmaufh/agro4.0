import 'package:flutter/cupertino.dart';

class PromocionalModel{
  String title;
  String subtitle;
  IconData icon;


  PromocionalModel({
    @required this.title,
    this.subtitle = "",
    @required this.icon
  });
}