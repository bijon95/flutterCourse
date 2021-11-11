import 'dart:convert';

import 'package:class_08/batch84/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http ;

import 'model.dart';

class JSON_LIST extends StatefulWidget {
  const JSON_LIST({Key? key}) : super(key: key);

  @override
  _JSON_LISTState createState() => _JSON_LISTState();
}

class _JSON_LISTState extends State<JSON_LIST> {
  var isLoading = true;

  var distList = List<Welcome>.empty();
 Future<List<Welcome>> getAllData()async {
   var myUrl = "https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-postcodes.json";
   Uri Url = Uri.parse(myUrl);
   var client = http.Client();
   var response = await client.get(Url);
   if (response.statusCode == 200) {
     isLoading = false;
     setState(() {});}
   var data = jsonDecode(response.body);
   var datanews = jsonEncode(data("postcodes"));
   return welcomeFromJson(datanews);
 }

    setDataToList() async {
    distList = await getAllData();

    }

  void initState() {
    // TODO: implement initState
    super.initState();
    setDataToList();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount: distList.length,
          itemBuilder: (BuildContext contex, int index) {
            return ListTile(
              title: Text(distList[index].upazila),
              subtitle: Text(distList[index].upazila),
            );
          }),
    );
  }
}
