import 'package:ahmed_ali/repeated_widgets./signup_field.dart';
import 'package:ahmed_ali/repeated_widgets/passwordField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static String id='signUp';
  @override
  State<SignUp> createState() => _SignUpState();
}
bool is_checked=false;
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){},
                  child:Text("Skip",
                    style: TextStyle(
                      color:Colors.blueGrey[400],
                      fontSize: 18,
                    ),
                  )
              )
            ],
          ),
          /////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 65,),
          Text('Sign Up',
            style: TextStyle(
                color:Colors.blue[300],
                fontSize: 25,
                fontWeight: FontWeight.w500
            ),
          ),
          ////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 30,),
          signUpField(label_text: "Name",),
          SizedBox(height: 10,),
          signUpField(label_text: "Email",),
          SizedBox(height: 10,),
          PasswordField(label_text: 'Password'),
          /////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.grey,
                  value: is_checked, onChanged:(bool? value) {
                setState(() {
                  is_checked=value??true;
                });
              }
              ),
              Column(
                children: [
                     Row(children: [
                      Text('I Have read and agree with the '),
                      Text('Terms and ',
                      style: TextStyle(
                        color: Colors.blue[400]
                      ),
                      )
                    ],),
                  Row(
                    children: [
                      Text('Conditions',style: TextStyle(color:Colors.blue[400]),),
                      Text(' and the'),
                      Text(' Privacy Policy',style: TextStyle(color:Colors.blue[400]),)
                    ],
                  ),
                  
                ],
              )
            ],
          ),
          SizedBox(height: 14,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Navigator.pushNamed(context,'login');
                }, child: Text("Log In",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                )
                ),
                SizedBox(width: 40,),
                Container(
                  width: 140,
                  height: 40,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize:Size(140, 40)
                    ),
                    child:  Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






