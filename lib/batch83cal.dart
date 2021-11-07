import 'dart:math';

import 'package:flutter/material.dart';
class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {

  double result=0;
  @override
  Widget build(BuildContext context) {

   Widget calBotton(var x){
      return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
        child: Center(child: Text(x.toString(),style: TextStyle(color: Colors.white,fontSize: 20),)),
      );

    }

     Widget equalBotton(var x){
      return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange,
        ),
        child: Center(child: Text(x.toString(),style: TextStyle(color: Colors.white,fontSize: 20),)),
      );
    }

    int x = 10;
   int y = 10;

   funA(int a, int b){
     result = (a + b).toDouble();
     return  ;
   }

   funSq (int a){
     return result = double.parse((a*a).toString());
   }

   funRoot (int a){
     return result  = sqrt(a) ;
   }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(result.toString()),
              color: Colors.green,
              height: 100,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calBotton(7),
                calBotton(8),
                calBotton(9),
                calBotton("/"),

              ],
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calBotton(4),
                calBotton(5),
                calBotton(6),
                calBotton("*"),

              ],
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calBotton(1),
                calBotton(2),
                calBotton(3),
                calBotton("-"),

              ],
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calBotton(0),
                calBotton("."),
                InkWell(
                    onTap: (){


                 setState(() {
                   funA(10, 20);
                 });
                    },
                    child: equalBotton("=")),
                calBotton("+"),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
