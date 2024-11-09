import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  static String id ="home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Text(
                  'CC',
                style: TextStyle(
                  color:Colors.blue[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
              ),
            ],
          ),
          /////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 30,),
          Container(
            width: 290,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              color: Colors.blue[300],
            ),
            child:Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height:40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                    ),
                  child:ClipOval(
                    child: Image(image: NetworkImage('https://st4.depositphotos.com/21607914/23504/i/450/depositphotos_235043172-stock-photo-lionel-messi-argentina-competes-group.jpg'),
                    fit:BoxFit.cover
                    ),
                  )
                  ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Leo Messi',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                        Text('Patient',
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontWeight: FontWeight.w300
                        ),
                        ),
                  ],
                ),
                SizedBox(width: 85,),
                Icon(Icons.arrow_forward_ios_sharp,
                color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
              'Select',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
              Text(
                  ' your condition for ',
                style: TextStyle(
                  color:Colors.grey[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 60),
            child: Text(' personalized diagnosis',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
              fontSize: 20
            ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color:Colors.cyan[300],
            child: Stack(
              children: [
                
              ],
            ),
          )
         ],
      ),
    );
  }
}
