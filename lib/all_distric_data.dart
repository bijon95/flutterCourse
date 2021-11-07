import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AllDistric extends StatefulWidget {
  const AllDistric({Key? key}) : super(key: key);

  @override
  _AllDistricState createState() => _AllDistricState();
}

class _AllDistricState extends State<AllDistric> {

 var urllink = "https://gist.githubusercontent.com/itsazzad/5b8bfcda3210596a57629fbbd01c5c8f/raw/d1e2f7202659f3914492c04a645b26aad8f128ad/Alphabetical%2520List%2520of%2520districts%2520of%2520Bangladesh%2520by%2520division";

 var syl = [ "Habiganj",
   "Moulvibazar",
   "Sunamganj",
   "Sylhet"];

 getDistricData () async{
   Uri myurl = Uri.parse(urllink);
   var client = http.Client();

     var  response = await client.get(myurl);
     var allDist = jsonDecode(response.body) ;
    // syl = jsonEncode(allDist['Sylhet']);
     print(syl);
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              getDistricData();
            },
            child: Container(
        child: Text("Load Data"),
      ),
          ),
          ListView.builder(
              itemCount:  syl.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  title: Text(syl[index]),

                );
              }),
        ],
      ),
    );
  }
}
