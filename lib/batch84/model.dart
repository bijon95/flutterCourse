// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Model> modelFromJson(String str) => List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    required this.id,
    required this.name,
    required this.bnName,
    required this.lat,
    required this.long,
  });

  String id;
  String name;
  String bnName;
  String lat;
  String long;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    id: json["id"],
    name: json["name"],
    bnName: json["bn_name"],
    lat: json["lat"],
    long: json["long"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "bn_name": bnName,
    "lat": lat,
    "long": long,
  };
}
