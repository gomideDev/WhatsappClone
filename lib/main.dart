import 'package:flutter/material.dart';
import 'package:whatsapp/views/splash.dart';
import 'package:whatsapp/shared/config/colors.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorsApp.greenPrimary
      ),
      home: Splash(),
    );
  }
}
