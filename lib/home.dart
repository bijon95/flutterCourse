import 'package:class_08/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      drawer: Drawer(
        child :  ListView(
          children: [
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("About"),
            ),
            ListTile(
              title: Text("Profile"),
            ),
            ListTile(
              title: Text("Home"),
            )
          ],
        )
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (builder)=>
                    Profile()));
          },
            child: Text("View Profile",style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 20),color: Color(0xffDCA358)))),
      ),
    );
  }
}
