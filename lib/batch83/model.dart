// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Division> divisionFromJson(String str) => List<Division>.from(json.decode(str).map((x) => Division.fromJson(x)));

String welcomeToJson(List<Division> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Division {
  Division({
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

  factory Division.fromJson(Map<String, dynamic> json) => Division(
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
