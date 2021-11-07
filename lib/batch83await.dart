import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class Batch83await extends StatefulWidget {
  const Batch83await({Key? key}) : super(key: key);

  @override
  _Batch83awaitState createState() => _Batch83awaitState();
}

class _Batch83awaitState extends State<Batch83await> {

 getBDAllDist()async{
   String distUrl = 'https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-districts.json';
  Uri myUrl = Uri.parse(distUrl);
  var client = http.Client();
  var response = await client.get(myUrl);

 var data = jsonDecode(response.body);
 print(data["divisions"][0]['bn_name']);

 }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getBDAllDist();
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBDAllDist();
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
