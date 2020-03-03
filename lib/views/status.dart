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
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.camera_alt),
        backgroundColor: ColorsApp.greenThird,
        onPressed: (){},
      ),
    );
  }
}