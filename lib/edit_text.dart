import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class EditText extends StatefulWidget {
  const EditText({Key? key}) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  TextEditingController ct_name = TextEditingController();
  TextEditingController ct_pass = TextEditingController();
  var view = "my data ";
  bool numberCorrect = true;

  bool isValidPhoneNumber(String string) {
    // Null or empty string is invalid phone number
    if (string == null || string.isEmpty) {
      return false;
    }

    // You may need to change this pattern to fit your requirement.
    // I just copied the pattern from here: https://regexr.com/3c53v
    const pattern = r'^(?:[+0]9)?[0-9]{11}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return false;
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(view),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              onChanged: (val){
            numberCorrect= isValidPhoneNumber(val);
            setState(() {
            });

            },
              controller: ct_name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "phone",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: numberCorrect ?  Colors.blue: Colors.red)
                ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )

              ),
            ),
          ),
         numberCorrect ? Container(): Text("Your number invalid"),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(

              controller: ct_pass,
              onChanged: (val){
               print(EmailValidator.validate(val));
              },

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.purple)
                ),

              ),
            ),
          ),
          IconButton(onPressed: () {
            view = ct_pass.text;
            setState(() {

            });


          },
              icon: Icon(Icons.remove_red_eye))
        ],
      ),
    );
  }
}
