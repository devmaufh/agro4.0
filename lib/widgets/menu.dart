import 'package:agroqueretaro/models/menuItemModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem extends StatelessWidget {
  final Function(String) onTap;
   MenuItem({
    Key key,
    this.onTap
    }) : super(key: key);


  final List<MenuItemModel> menuItems = [
    MenuItemModel(title: "Apoyos", colorAvatar: Colors.pink, icon: FontAwesomeIcons.handHoldingHeart),
    MenuItemModel(title: "Agricultura", colorAvatar: Colors.green, icon: FontAwesomeIcons.tractor),
    MenuItemModel(title: "Ganadería", colorAvatar: Colors.purple, icon: FontAwesomeIcons.piggyBank),
    MenuItemModel(title: "Precios", colorAvatar: Colors.amber, icon: FontAwesomeIcons.dollarSign),
    MenuItemModel(title: "Clima", colorAvatar: Colors.blue, icon: FontAwesomeIcons.cloudRain),
    MenuItemModel(title: "Avisos", colorAvatar: Colors.red, icon: FontAwesomeIcons.solidBell),
    MenuItemModel(title: "Geo-espacial", colorAvatar: Colors.indigo, icon: FontAwesomeIcons.globeAmericas),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0
        ),
        scrollDirection: Axis.horizontal,
        itemCount: menuItems.length,
        itemBuilder: (context, index){
          String route =menuItems[index].title.toLowerCase();
          return InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: onTap != null ? ()=>onTap(route): null ,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: menuItems[index].colorAvatar,
                  radius: 35,
                  child: Icon(menuItems[index].icon, color: Colors.white,size: 25,),
                ),
                SizedBox(height: 5,),
                Text(menuItems[index].title, style: TextStyle(fontWeight: FontWeight.w500),)
              ],
            ),
          );
        },
        separatorBuilder: (context, index)=>SizedBox(width: 35),
      ),
    );
  }
}

//            

