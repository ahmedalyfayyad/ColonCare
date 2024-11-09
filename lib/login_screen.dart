import 'package:ahmed_ali/repeated_widgets./signup_field.dart';
import 'package:ahmed_ali/repeated_widgets/passwordField.dart';
import 'package:ahmed_ali/repeated_widgets/socialIcons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id="login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.pushNamed(context, 'home');
              },
                  child:Text("Skip",
                  style: TextStyle(
                    color:Colors.blueGrey[400],
                    fontSize: 18,
                  ),
                  )
              )
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 65,),
          Text('Log In',
          style: TextStyle(
            color:Colors.blue[300],
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 30,),
          signUpField(label_text: "Email",),
          SizedBox(height: 10,),
          PasswordField(label_text: 'Password'),
          ////////////////////////////////////////////////////////////////////////////////////////////////
          Row(
            children: [
              SizedBox(
                width: 170,
              ),
              TextButton(onPressed: (){}, child: Text('Forget Your Password?',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ))
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 20,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 140,
                    height: 40,
                    child: TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize:Size(140, 40)
                      ),
                      child:  Text('Log In',
                        style: TextStyle(
                          color: Colors.white,
                          ),
                          ),
                          ),
                             ),
                SizedBox(width: 40,),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context,'signUp');
                }, child: Text("Sign Up",
                style: TextStyle(
                  color: Colors.blue
                ),
                )
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Center(
            child: Text(
              'Or Continue With',
              style: TextStyle(
                color:Colors.grey[600],
                fontWeight: FontWeight.w300,
                fontSize: 12
              ),
            ),
          ),
          ////////////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Socialicons(socialIcon: 'https://static.vecteezy.com/system/resources/previews/018/930/476/non_2x/facebook-logo-facebook-icon-transparent-free-png.png',),
                SizedBox(width: 10,),
                Icon(Icons.apple,
                size: 30,
                ),
                SizedBox(width: 10,),
                Stack(
                  children:[
                    Positioned(
                      top:3,
                      right: 3.3,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.red
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.g_mobiledata,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ]
                )
              ],
            ),
        ],
      ),
    );
  }
}
