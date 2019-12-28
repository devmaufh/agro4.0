import 'package:agroqueretaro/models/promocionalModel.dart';
import 'package:agroqueretaro/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SwiperHome extends StatelessWidget {
  SwiperHome({Key key}) : super(key: key);


  final List<PromocionalModel> anuncions = [
    PromocionalModel(
      title: "¿Eres productor?",
      subtitle: "¡Qué esperas para registrarte!",
      icon: FontAwesomeIcons.userNinja
    ),
    PromocionalModel(
      title: "No soy productor pero quiero acceder a los beneficios",
      subtitle: "Entonces, ¡Registrate ya!",
      icon: FontAwesomeIcons.userPlus
    ),
    PromocionalModel(
      title: "¿Ya tienes cuenta?",
      subtitle: "!Inicia sesión ya!",
      icon: FontAwesomeIcons.userAlt
    ),
    
  ]; 

  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Consts.blue
        ),
        child: Swiper(
          autoplay: true,
          onTap: (index){
            print("Taped $index");
          },
          duration: 15,
          itemCount: anuncions.length,
          loop: true,
          itemBuilder: (context,index){
            return Row(
              children: <Widget>[
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(anuncions[index].title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0 ),),
                      Text(anuncions[index].subtitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),),
                    ],
                  ),
                ),
                SizedBox(width: 10.0,),
                CircleAvatar(
                  backgroundColor: Consts.darkBlue,
                  radius: 50.0,
                  child: Icon(anuncions[index].icon, size: 30.0,color: Colors.white,),
                ),
                SizedBox(width: 20.0),
              ],
            );
          },
        ),
      ),
    );
  }
  /*
  Registrate productor 
      ¿Eres productor? ¿No?
        ¡Qué esperas para registrarte!
  
  Registro general
      No soy productor pero quiero acceder a los beneficios.
        ¡Registrate ya!

  ¿Ya tienes cuenta? 
      ¡Inicia sesión


  */
}