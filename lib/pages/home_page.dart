import 'package:agroqueretaro/widgets/background.dart';
import 'package:agroqueretaro/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundGradient(
            screenSize: screenSize,
            isPinkBox: false,
          ),
          // _background(screenSize,isPinkBox: true),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Queretaro",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                )),
                _menu(),
                _menuItem2(screenSize),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _menu() {
    return Table(
      children: [
        TableRow(children: [
          _buildMenuItem("Apoyos", Colors.pink,
              FontAwesomeIcons.handHoldingHeart, () => print("Apoyos")),
          _buildMenuItem("Agricultura", Colors.green, FontAwesomeIcons.tractor,
              () => print("Agricultura"))
        ]),
        TableRow(children: [
          _buildMenuItem("Ganadería", Colors.purple, FontAwesomeIcons.piggyBank,
              () => print("Gana")),
          _buildMenuItem("Precios", Colors.yellow[700],
              FontAwesomeIcons.dollarSign, () => print("Precio")),
        ]),
        TableRow(children: [
          _buildMenuItem("Clima", Colors.blueAccent, FontAwesomeIcons.cloudRain,
              () => print("Cli")),
          _buildMenuItem("Avisos", Colors.red, FontAwesomeIcons.solidBell,
              () => Navigator.pushNamed(context, 'avisos')),
        ]),
        TableRow(children: [
          _buildMenuItem("Geo-espacial", Colors.purple,
              FontAwesomeIcons.globeAmericas, () => print("GEO")),
          _buildMenuItem("Contactanos", Colors.indigo,
              FontAwesomeIcons.mailBulk, () => print("HOLA")),
        ]),
      ],
    );
  }

  Widget _buildMenuItem(
      String title, Color avatarColor, IconData icon, Function onTapItem) {
    return InkWell(
      onTap: onTapItem,
      child: Container(
        height: 180,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(200, 200, 200, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
              backgroundColor: avatarColor,
              radius: 35.0,
              child: Icon(icon, color: Colors.white, size: 30.0),
            ),
            Text(
              title,
              style: TextStyle(
                  color: avatarColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget _menuItem2(Size screen) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
          height: 130.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(200, 200, 200, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                 "Agricultura",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, color: Colors.green),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          top: 15.0,
          bottom: 15.0,
          child: Container(
            padding: EdgeInsets.all(5),
            height: double.maxFinite,
            width:  screen.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green
            ),
            child: Icon(FontAwesomeIcons.tractor, color: Colors.white, size: screen.width * 0.10,),
          )
        ),
      ],
    );
  }
}
