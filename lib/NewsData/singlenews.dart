import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class SingleNews extends StatefulWidget {
  News value;
  SingleNews(this.value);
  @override
  _SingleNewsState createState() => _SingleNewsState();
}

class _SingleNewsState extends State<SingleNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New page"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                child: Image.network(widget.value.urlToImage)),
            Text(widget.value.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text(widget.value.publishedAt.toString()),
            Text(widget.value.description),
          ],
        ),
      ),
    );
  }
}
