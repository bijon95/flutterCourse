import 'dart:convert';

import 'package:class_08/NewsData/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class ViewNews extends StatefulWidget {
  const ViewNews({Key? key}) : super(key: key);

  @override
  _ViewNewsState createState() => _ViewNewsState();
}

class _ViewNewsState extends State<ViewNews> {

  bool isLoading = true;
var newsList = List<News>.empty();
 Future<List<News>> getApiData()async{
   String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=b335f899d18942058adb6bd2155feda9";
   Uri myuri = Uri.parse(url);
   var clinet = http.Client();
   var response =await clinet.get(myuri);
  // print(response.body);
   if(response.statusCode==200){
     isLoading= false;
     setState(() {
       
     });
   }
   var data = jsonDecode(response.body);
   var news = data["articles"];
   print(news[0]['title']);
   return newsFromJson(jsonEncode(news));
 }

 setDataFromJson ()async{
   newsList = await getApiData();
   print(newsList.length);
 }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDataFromJson ();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:isLoading ? CircularProgressIndicator(): ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (BuildContext contex, int index){return ListTile(
        title:Text(newsList[index].title) ,
            leading: Image.network(newsList[index].urlToImage),
      );}),
    );
  }
}
