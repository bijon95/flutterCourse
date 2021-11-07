import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FigmaDesign extends StatefulWidget {
  const FigmaDesign({Key? key}) : super(key: key);

  @override
  _FigmaDesignState createState() => _FigmaDesignState();
}

class _FigmaDesignState extends State<FigmaDesign> {
  @override
  Widget build(BuildContext context) {
   var fullheight = MediaQuery.of(context).size.height;
   var fullwidth = MediaQuery.of(context).size.width;

   return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
               child: Image.asset('img/BackGround.png',fit: BoxFit.fill,)
            ),
            Column(
              children: [
                Container(
                  height: fullheight*.3,
                  child:  Image.asset('img/eat-wow-01.png'),
                ),
                Container(
                  width: fullwidth,
                  height: fullwidth*.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(

                          child: Text("Sign In",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.w700)))),
                      Container(
                          margin: EdgeInsets.only(left: 18,bottom: 5),
                          width: fullwidth,
                          child: Text("Email ID",style: TextStyle(fontSize: 12,),)),
                     Container(
                       margin: EdgeInsets.only(left: 18,right: 18),
                       child: TextField(

                         decoration: InputDecoration(
                           hintText: "abc@gmail.com",
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Color(0xffbebebe))
                           ),
                           focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Color(0xffbebebe))
                           ),

                         ),
                       ),
                     ),

                          Container(
                            width: fullwidth,
                            margin: EdgeInsets.only(left: 18,bottom: 5,top: 20),
                          child: Text("Password",style: TextStyle(fontSize: 12,),)),
                      Container(
                        margin: EdgeInsets.only(left: 18,right: 18),
                        child: TextField(

                          decoration: InputDecoration(
                            hintText: "password",
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffbebebe))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffbebebe))
                            ),

                          ),
                        ),
                        
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 48),
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xff7f7f7f),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(Icons.arrow_forward,color: Colors.white,),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          child: Text('or')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('img/FacebookSignin.png'),
                          Image.asset('img/GoogleSignin.png'),
                        ],
                      ),
                      SvgPicture.asset('img/fbicon.svg'),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Not yet a Member"),
                            TextButton(onPressed: (){}, child: Text("Sign UP",style: TextStyle(decoration: TextDecoration.underline,color: Colors.green),))
                            ],
                          ))

                    ],
                  ),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}
