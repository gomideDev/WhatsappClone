import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';

class Conversas extends StatefulWidget {
  @override
  _ConversasState createState() => _ConversasState();
}

class _ConversasState extends State<Conversas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.message),
        backgroundColor: ColorsApp.greenThird,
        onPressed: (){},
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          return Card(
          );
        },
      ),
    );
  }
}