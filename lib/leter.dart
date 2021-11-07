import 'package:flutter/material.dart';
class Leter extends StatefulWidget {
 var name ;
 Leter({this.name});

  @override
  _LeterState createState() => _LeterState();
}

class _LeterState extends State<Leter> {

  var leterlist = ['A','B','C','D'];
  var imageList = ['img/apple.png','img/ball.png','Cat'
  ];
  var wordList = ['Apple','Ball','Cat'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      leading: InkWell(
          onTap: (){
            Navigator.of(context).pop("data");
          },
          child: Icon(Icons.home)),
      ),
      body: Column(children: [
        Text(leterlist[index]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: (){
                  index --;
                  setState(() {

                  });
                },
                child: Icon(Icons.arrow_back_ios)),
            Container(
                height: 200,
                width: 150,
                child: Image.asset(imageList[index])),
          InkWell(
              onTap: (){
                if(index==2){
                  index = 0;
                  setState(() {});
                }
                else{
                  index++;
                  setState(() {});
                }

              },
              child: Icon(Icons.arrow_forward_ios_sharp)),
          ],
        ),
        Text(wordList[index]),
      ],),
    );
  }
}
