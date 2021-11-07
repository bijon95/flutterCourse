import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


 getBDDistricName()async{
   String url ="https://raw.githubusercontent.com/fahimxyz/bangladesh-geojson/master/bd-districts.json";

   Uri strurl = Uri.parse(url);


   var response =await http.Client().get(strurl);
   //print(response.body);
   var data = jsonDecode(response.body);
   var onlyDiscric = jsonEncode(data['districts'][53]['name']);
   print(onlyDiscric);

 }

  Widget calButton(var t){
    return Container(
      height: 100,
        width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(width: 1),

      ),
      child: Center(child: Text(t.toString()),),
    );

  }
  //function
  fun1() async  {
    await Future.delayed(Duration(seconds: 5), () {
      print("This code executes after 5 seconds");
    });
    print("Flutter Day 20");
    print("Print from fun1");
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.green,
            height: 100,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(
              onTap: (){

              // fun1();
               getBDDistricName();

              },
                child: calButton(7)),
            calButton(8),
            calButton(9),
            calButton("/"),


          ],),
          Row(children: [
            calButton(4),
            calButton(5),
            calButton(6),
            calButton('*'),


          ],),
          Row(children: [
            calButton(1),
            calButton(2),
            calButton(3),
            calButton('-'),


          ],),
          Row(children: [
            calButton(0),
            calButton(00),
            calButton('='),
            calButton('+'),

          ],),
        ],
      ),
    );
  }
}
