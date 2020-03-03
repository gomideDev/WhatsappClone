import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';

class Chamadas extends StatefulWidget {
  @override
  _ChamadasState createState() => _ChamadasState();
}

class _ChamadasState extends State<Chamadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.phone),
        backgroundColor: ColorsApp.greenThird,
        onPressed: (){},
      ),
    );
  }
}