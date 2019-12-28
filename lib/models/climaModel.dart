// To parse this JSON data, do
//
//     final climaModel = climaModelFromJson(jsonString);

import 'dart:convert';

ClimaModel climaModelFromJson(String str) => ClimaModel.fromJson(json.decode(str));

String climaModelToJson(ClimaModel data) => json.encode(data.toJson());

class ClimaModel {
    int climaId;
    String titulo;
    String url;
    String urlImage;

    ClimaModel({
        this.climaId,
        this.titulo,
        this.url,
        this.urlImage,
    });

    factory ClimaModel.fromJson(Map<String, dynamic> json) => ClimaModel(
        climaId: json["climaId"],
        titulo: json["titulo"],
        url: json["url"],
        urlImage: json["urlImage"],
    );

    Map<String, dynamic> toJson() => {
        "climaId": climaId,
        "titulo": titulo,
        "url": url,
        "urlImage": urlImage,
    };




    static List<ClimaModel> demoListaClima = [
      ClimaModel(
        climaId: 1,
        titulo: "Diario",
        url: "asodasd",
        urlImage: "diario.png",
      ),
      ClimaModel(
        climaId: 1,
        titulo: "Semanal agrario",
        url: "asodasd",
        urlImage: "agrario.png",
      ),
      ClimaModel(
        climaId: 1,
        titulo: "Boletin semanal",
        url: "asda",
        urlImage: "semanal.png",
      ),
      ClimaModel(
        climaId: 1,
        titulo: "Radar",
        url: "asodasd",
        urlImage: "radar.png",
      ),
      ClimaModel(
        climaId: 1,
        titulo: "Semestral",
        url: "asodasd",
        urlImage: "semestral.png",
      ),
    ];
}
