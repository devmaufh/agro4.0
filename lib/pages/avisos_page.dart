import 'package:agroqueretaro/utils/const.dart';
import 'package:agroqueretaro/widgets/background.dart';
import 'package:agroqueretaro/widgets/header.dart';
import 'package:flutter/material.dart';
class AvisosPage extends StatefulWidget {
  AvisosPage({Key key}) : super(key: key);

  @override
  _AvisosPageState createState() => _AvisosPageState();
}

class _AvisosPageState extends State<AvisosPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundGradient(screenSize: screenSize, isPinkBox: false),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                HeadersText(h1: "Avisos",h2: "Mantente al margen con los avisos más recientes",textColor: Colors.black,),
                ListView(
                  shrinkWrap: true,padding: EdgeInsets.all(20),
                  children: <Widget>[
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text("21 - 10 - 2019 02:55 PM ", style: TextStyle(color: Colors.white),),
                      children: <Widget>[
                        Text("Amigo productor la SEDEA te informa que ya se aperturan las ventanillas para la solicitud de apoyos agropecuarios 2020. Para mayores informes consulta la sección dentro de la aplicación o comunicate al 123456789", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text("21 - 10 - 2019 02:55 PM ", style: TextStyle(color: Colors.white),),
                      children: <Widget>[
                        Text("Amigo productor la SEDEA te informa que ya se aperturan las ventanillas para la solicitud de apoyos agropecuarios 2020. Para mayores informes consulta la sección dentro de la aplicación o comunicate al 123456789", style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}