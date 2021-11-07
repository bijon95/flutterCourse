import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class TextFieldCls extends StatefulWidget {
  const TextFieldCls({Key? key}) : super(key: key);

  @override
  _TextFieldClsState createState() => _TextFieldClsState();
}

class _TextFieldClsState extends State<TextFieldCls> {
  TextEditingController ct_email = TextEditingController();
  TextEditingController ct_name = TextEditingController();
  TextEditingController ct_phone = TextEditingController();
  TextEditingController ct_pass = TextEditingController();
 var data = "";
 bool phoneNoCheck = true;
  bool isValidPhoneNumber(String string) {

    if (string == null || string.isEmpty) {
      return false;
    }
    const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return false;
    }
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ct_email.text = "bijoninfo@gmail.com";
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("TextField"),),
      body: Column(children: [
        Container(
            margin: EdgeInsets.all(20),
            child: Text(data)),
        Container(
          padding: EdgeInsets.all(5),
          child: TextField(
            onChanged: (val){
              data = val;
             print(EmailValidator.validate(val)) ;

              setState(() {
              });
            },
            controller: ct_email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.green, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),

              enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.purple, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),
            ),

          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: TextField(
            onChanged: (val){
              data = val;
              setState(() {
              });
            },
            controller: ct_name,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Name",
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.green, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),

              enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.purple, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),
            ),

          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: TextField(
            onChanged: (val){
              data = val;

              phoneNoCheck = isValidPhoneNumber(val);

              setState(() {
              });
            },
            controller: ct_phone,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone",
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: phoneNoCheck ? Colors.green : Colors.red, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),

              enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.purple, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),

            ),

          ),
        ),
        phoneNoCheck ? Container(): Text("Your Phone Number Invalid"),
        Container(

          padding: EdgeInsets.all(5),
          child: TextField(
            onChanged: (val){
              data = val;
              setState(() {
              });
            },
            keyboardType: TextInputType.text,
            controller: ct_pass,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.green, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),

              enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.purple, width: 2.0),
                borderRadius:  BorderRadius.circular(10),
              ),
            ),

          ),
        ),

      ],),
    );
  }
}
