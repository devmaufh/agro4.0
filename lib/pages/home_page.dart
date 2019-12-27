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
          BackgroundGradient(screenSize: screenSize, isPinkBox: true,),
         // _background(screenSize,isPinkBox: true),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                HeadersText(h1: "Queretaro", h2: "Secretaría de desarrollo agropecuario",),
                _menu()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _menu(){
    return Table(
      children: [
        TableRow(
          children: [
            _buildMenuItem("Apoyos", Colors.pink, FontAwesomeIcons.handHoldingHeart, ()=>print("Apoyos")),
            _buildMenuItem("Agricultura", Colors.green, FontAwesomeIcons.tractor, ()=> print("Agricultura"))
          ]
        ),
        TableRow(
          children: [
            _buildMenuItem("Ganadería", Colors.purple, FontAwesomeIcons.piggyBank, ()=> print("Gana")),
            _buildMenuItem("Precios", Colors.yellow[700], FontAwesomeIcons.dollarSign, ()=> print("Precio")),

          ]
        ),
        TableRow(
          children: [
            _buildMenuItem("Clima", Colors.blueAccent,FontAwesomeIcons.cloudRain, ()=> print("Cli")),
            _buildMenuItem("Avisos", Colors.red, FontAwesomeIcons.solidBell, ()=> Navigator.pushNamed(context, 'avisos')),
          ]
        ),
        TableRow(
          children: [
            _buildMenuItem("Geo-espacial", Colors.purple,FontAwesomeIcons.globeAmericas, ()=>print("GEO")),
            _buildMenuItem("Contactanos", Colors.indigo, FontAwesomeIcons.mailBulk,()=>print("HOLA")),
          ]
        ),
        
      ],
    );
  }


  Widget _buildMenuItem(String title,Color avatarColor,IconData icon, Function onTapItem){
    return  InkWell(
        onTap: onTapItem,
              child: Container(
          height: 180,
          margin: EdgeInsets.all(15.0),
          decoration:   BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5,),
              CircleAvatar(
                backgroundColor: avatarColor,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(title, style: TextStyle(color: avatarColor, fontSize: 20, fontWeight: FontWeight.w600),),
              SizedBox(height: 5,)
            ],
          ),
        ),
      );
  }

}
