import 'dart:convert';
ApoyosModel apoyosModelFromJson(String str) => ApoyosModel.fromJson(json.decode(str));

String apoyosModelToJson(ApoyosModel data) => json.encode(data.toJson());

class ApoyosModel {
    int apoyoId;
    String apoyo;
    String url;
    String urlImage;

    ApoyosModel({
        this.apoyoId,
        this.apoyo,
        this.url,
        this.urlImage
    });

    factory ApoyosModel.fromJson(Map<String, dynamic> json) => ApoyosModel(
        apoyoId: json["apoyoId"],
        apoyo: json["apoyo"],
        url: json["url"],
        urlImage: json["urlImage"]
    );

    Map<String, dynamic> toJson() => {
        "apoyoId": apoyoId,
        "apoyo": apoyo,
        "url": url,
        "urlImage": urlImage
    };


    
 static List<ApoyosModel> apoyosList = <ApoyosModel>[
    ApoyosModel(
      url: "www.google.com",
      apoyo: "Apoyo a la producción y capitalización de productores rurales",
      apoyoId: 122,
      urlImage: "tractor.png"
    ),
    ApoyosModel(
      url: "www.google.com",
      apoyo: "Infraestructura hidrológica",
      apoyoId: 122,
      urlImage: "hidrologica.png"

    ),
    ApoyosModel(
      url: "www.google.com",
      apoyo: "Apoyo al fortalecimiento de la economía de las familias rurales",
      apoyoId: 122,
      urlImage: "economia.png"

    ),
    ApoyosModel(
      url: "www.google.com",
      apoyo: "Impulso a la productividad forestal",
      apoyoId: 122,
      urlImage: "bosque.png"

    ),
    ApoyosModel(
      url: "www.google.com",
      apoyo: "Manejo y conservación de Áreas naturales",
      apoyoId: 122,
      urlImage: "natural.png"

    )
 ];
 
}


