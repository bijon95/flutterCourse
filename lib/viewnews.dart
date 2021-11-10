import 'dart:convert';

import 'package:class_08/model2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ViewNews extends StatefulWidget {
  const ViewNews({Key? key}) : super(key: key);

  @override
  _ViewNewsState createState() => _ViewNewsState();
}
var newsList = List<Model>.empty();
bool isLoading = true;
class _ViewNewsState extends State<ViewNews> {
  @override
  Future<List<Model>>
  getApiData()async {
    String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=b335f899d18942058adb6bd2155feda9";
    Uri myuri = Uri.parse(url);
    var clinet = http.Client();
    var response = await clinet.get(myuri);
    var data = jsonDecode(response.body);
    return modelFromJson(jsonEncode(data["articles"]));
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }
  @override
  setList()async {
    newsList = await getApiData();
    print(newsList[0].title);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ?CircularProgressIndicator():
         ListView.builder(
           itemCount:newsList.length,
           itemBuilder:
               (BuildContext count,int index){return ListTile(
             title: Text(newsList[index].title),
             subtitle: Text(newsList[index].author),
           );}),
    );
  }
}
