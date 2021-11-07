import 'package:class_08/figmadesign.dart';
import 'package:class_08/home.dart';
import 'package:class_08/profile.dart';
import 'package:class_08/text_field.dart';
import 'package:class_08/view/numbershow.dart';
import 'package:flutter/material.dart';
import 'ForgetPass/forderpass.dart';
import 'NewsData/view_news.dart';
import 'all_distric_data.dart';
import 'batch82http.dart';
import 'batch83/json_list_view.dart';
import 'batch83await.dart';
import 'batch83cal.dart';
import 'batch84/calldatafromapi.dart';
import 'calculator.dart';
import 'democal.dart';
import 'edit_text.dart';
import 'leter.dart';
import 'llistitem.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.light,
        primarySwatch: Colors.blue,

      ),
      home: ViewNews(),
    );
  }
}

