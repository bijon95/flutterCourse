import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class TestUrl extends StatefulWidget {
  const TestUrl({Key? key}) : super(key: key);

  @override
  _TestUrlState createState() => _TestUrlState();
}

class _TestUrlState extends State<TestUrl> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
         //   launch("tel://+880168068000");
            launch('mailto:bijoninfo@gmail.com');
            var url = "https://wa.me/01680680000/?text=my text";
          },
          child: Container(
            child: Center(child: Text("Call")),
            color: Colors.purple,
            height: 50,
            width: 200,
          ),
        ),
      ),
    );
  }
}
