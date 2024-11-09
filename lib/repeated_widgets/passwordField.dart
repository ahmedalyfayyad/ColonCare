import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PasswordField extends StatefulWidget {

  PasswordField({
    required this.label_text
  });
  String label_text;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isobsecured=true;

  @override
  Widget build(BuildContext context) {
     String passwordText= _isobsecured?"Show":"Hide";
    return Container(
      width: 320,
      child: TextField(
        obscureText: _isobsecured,
        decoration: InputDecoration(
            labelText: widget.label_text,
            labelStyle: TextStyle(
                color:Colors.blueGrey[300]
            ),
            suffixIcon: TextButton(onPressed: (){
              setState(() {
                _isobsecured=!_isobsecured;
              });
            },
                child:Text(passwordText,
                style: TextStyle(
                  color:Colors.blue[300],
                ),
                ),
            ),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:Colors.black12,
                )
            )
        ),
      ),
    );
  }
}
