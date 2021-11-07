import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ct_name = TextEditingController();
  TextEditingController ct_pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff94611C),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16)
              )
            ),
            margin: EdgeInsets.only(top: 50),

            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: ct_name,
                  decoration: InputDecoration(
                  hintText: "User name",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: Colors.grey)

    )
                  ),
                ),
                TextField(
                  controller: ct_pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey)

                      )
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password",)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('img/group660.svg'),
                    SvgPicture.asset('img/group660.svg'),
                    SvgPicture.asset('img/group660.svg'),

                  ],
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffFFC700),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(25)
                    )
                  ),
                  child: Center(child: Text("Sign IN"),),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
