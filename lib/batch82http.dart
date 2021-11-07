import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Batch83 extends StatefulWidget {
  const Batch83({Key? key}) : super(key: key);

  @override
  _Batch83State createState() => _Batch83State();
}

class _Batch83State extends State<Batch83> {
  var data;
  bool isLoading = true;
  Future  getBBAllUpozila()async{
  String url = "https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-districts.json";
  Uri myurl = Uri.parse(url);
  var client = http.Client();
  var response =await client.get(myurl);
   data = jsonDecode(response.body);
   if(response.statusCode==200){
     isLoading = false;
     setState(() {

     });
   }
  print(response.statusCode);
  print(data['districts']);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBBAllUpozila();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child:
        isLoading ?
        CircularProgressIndicator()
            : ListView.builder(
            itemCount: data['districts'].length,
            itemBuilder: (BuildContext contex, int index){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1,)
                ),
                margin: EdgeInsets.only(top: 10,),
                child: Column(
                  children: [
                    Text(data['districts'][index]['id']),
                    Text(data['districts'][index]['name'],style: TextStyle(fontSize: 20,color: Colors.purple),),
                    Text(data['districts'][index]['bn_name']),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data['districts'][index]['lat']),
                        SizedBox(width: 20,),
                        Text(data['districts'][index]['long'])

                      ],
                    ),

                  ],
                ),
              );
        })),
    );
  }
}
