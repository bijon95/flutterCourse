import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    int index = 0;
    fun(int val){
      index= val;
      if(val==0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
      }
      else if(val==1){
        //home page
      }
      else if(val ==2){
        // cart page
      }
      else if(val==3){
      // menu page
      }
    }
    return Scaffold(
      endDrawer:Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.blue,
        currentIndex: 2,
        items:
          <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Profile',
                icon: SvgPicture.asset('img/fbicon.png')),
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.card_travel)),
        ],
      ),
      appBar: AppBar(title: Text('name'),),
        drawer: Drawer(
          child :ListView(
            children: [
              Text("Gmail"),
              InkWell(
                onTap: (){

                },
                child: ListTile(
                  title: Text("All Inbox"),
                  leading: Icon(Icons.inbox),
                ),
              ),
            ],
          )
        ),
      body: Container(
        child: Align(
          alignment: Alignment.centerRight,
          child: Text('email',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22)),
        ),),
      ),
    );
  }
}
