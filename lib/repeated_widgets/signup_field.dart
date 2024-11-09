
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUpField extends StatelessWidget {
  signUpField({
    required this.label_text
  });
  String label_text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: TextField(
        decoration: InputDecoration(
            labelText: label_text,
            labelStyle: TextStyle(
                color:Colors.blueGrey[300]
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
