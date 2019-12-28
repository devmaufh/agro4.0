import 'package:agroqueretaro/utils/const.dart';
import 'package:agroqueretaro/widgets/menu.dart';
import 'package:agroqueretaro/widgets/swiperHome.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              getAppBarUI(),
              SizedBox(
                height: 15,
              ),
              MenuItem(
                onTap: (ruta) {
                  print("RUTA: $ruta");
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SwiperHome(),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Avisos recientes",
                            style: Theme.of(context).textTheme.subhead,
                          ),
                          Spacer(),
                          MaterialButton(
                            child: Text("Ver todos"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: <BoxShadow>[
                              BoxShadow(blurRadius: 6.0, color: Colors.grey)
                            ],
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 8.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Consts.blue),
                              child: Text(
                                "12/12/2019 | 02:25 P.M",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Amigo productor la SEDEA te informa que ya se aperturaron las ventanillas para la solicitud de apoyos agropecuarios 2020. Para mayores informes consulta la sección de apoyos dentro de la aplicación o comunícate al 442-192-6600",
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: <BoxShadow>[
                              BoxShadow(blurRadius: 6.0, color: Colors.grey)
                            ],
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 8.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Consts.blue),
                              child: Text(
                                "12/12/2019 | 02:25 P.M",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Estimados usuarios saludos desde la SADER Queretaro.",
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                   
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Queretaro',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    letterSpacing: 2.5,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Secretaría de desarrollo agropecuario',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 2,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          /*
          Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/secretaria.png'),
          )
          */
        ],
      ),
    );
  }
}
