import 'package:class_08/Model/phonelist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ViewNumber extends StatefulWidget {
  const ViewNumber({Key? key}) : super(key: key);

  @override
  _ViewNumberState createState() => _ViewNumberState();
}

class _ViewNumberState extends State<ViewNumber> {
 bool isLoading = true;
 var divitionList =  List<Welcome>.empty();
  getApiData()async{
    String url = "https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-divisions.json";
Uri myUrl = Uri.parse(url);
 var client = http.Client();
 var response =await client.get(myUrl);
 print(response.statusCode);
    print(response.body);
 if(response.statusCode==200){
   isLoading = false;
   setState(() {

   });
 }


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ?
      CircularProgressIndicator():
      Text("Data Loaded"),
    );
  }
}
