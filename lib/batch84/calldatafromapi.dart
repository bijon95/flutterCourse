import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class CallAPI extends StatefulWidget {
  const CallAPI({Key? key}) : super(key: key);

  @override
  _CallAPIState createState() => _CallAPIState();
}

class _CallAPIState extends State<CallAPI> {

 var divisitonList = List<Model>.empty() ;
 bool isLoading = true;
 Future<List<Model>> getData() async {
    String jsonUrl =
        "https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-divisions.json";
    Uri myUrl = Uri.parse(jsonUrl);

    var response = await http.Client().get(myUrl);
if(response.statusCode==200){
  isLoading= false;
}
    var division = jsonDecode(response.body);
    var data = division['divisions'];

    return modelFromJson(jsonEncode(data)) ;
  }

  setDatatoList()async{
   divisitonList = await getData();
   print(divisitonList[0].bnName);
  }

  @override
  void initState() {
    setDatatoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? CircularProgressIndicator(): ListView.builder(
          itemCount: divisitonList.length,
          itemBuilder: (BuildContext contex, int index){
        return ListTile(
          subtitle: Text(divisitonList[index].bnName),
          title: Text(divisitonList[index].name),
          leading: Text(divisitonList[index].id),
        );
      }),
    );
  }
}
