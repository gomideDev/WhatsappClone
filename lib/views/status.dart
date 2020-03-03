import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: Stack(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left:31),
        child: Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: ColorsApp.silver,
            onPressed: (){},
            child: Icon(Icons.label_important),),
        ),
        )),

        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: ColorsApp.greenThird,
            onPressed: (){},
          child: Icon(Icons.camera_alt),),
          
        ),
      ],
    ),
      body: Container(
        child: Column(
          children: <Widget>[
            
              ],

        ),
      ),
    );
  }
}