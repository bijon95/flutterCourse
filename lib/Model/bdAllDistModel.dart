// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.districts,
  });

  List<District> districts;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    districts: List<District>.from(json["districts"].map((x) => District.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "districts": List<dynamic>.from(districts.map((x) => x.toJson())),
  };
}

class District {
  District({
    required this.id,
    required this.divisionId,
    required this.name,
    required this.bnName,
    required this.lat,
    required this.long,
  });

  String id;
  String divisionId;
  String name;
  String bnName;
  String lat;
  String long;

  factory District.fromJson(Map<String, dynamic> json) => District(
    id: json["id"],
    divisionId: json["division_id"],
    name: json["name"],
    bnName: json["bn_name"],
    lat: json["lat"],
    long: json["long"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "division_id": divisionId,
    "name": name,
    "bn_name": bnName,
    "lat": lat,
    "long": long,
  };
}
