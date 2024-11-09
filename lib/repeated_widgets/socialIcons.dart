import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Socialicons extends StatelessWidget {
  Socialicons({required this.socialIcon});
  String socialIcon;
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 39,
      height: 39,
      child:Image(image: NetworkImage(socialIcon),) ,
    );
  }
}
