// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.divisionId,
    required this.districtId,
    required this.upazila,
    required this.postOffice,
    required this.postCode,
    required this.district,
  });

  String divisionId;
  String districtId;
  String upazila;
  String postOffice;
  String postCode;
  String district;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    divisionId: json["division_id"],
    districtId: json["district_id"],
    upazila: json["upazila"],
    postOffice: json["postOffice"],
    postCode: json["postCode"],
    district: json["district"],
  );

  Map<String, dynamic> toJson() => {
    "division_id": divisionId,
    "district_id": districtId,
    "upazila": upazila,
    "postOffice": postOffice,
    "postCode": postCode,
    "district": district,
  };
}


