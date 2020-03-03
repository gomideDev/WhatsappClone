import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:whatsapp/views/Home.dart';
import 'Home.dart';

class Splash extends StatefulWidget {
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) async{
      if (status == AnimationStatus.completed) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
  }

  Widget build(BuildContext context) {

    return Container(
        color: Colors.white,
        child: FadeTransition(
            opacity: animation,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  
                  SizedBox(height: 100, width: 80, child: Image.asset("src/images/logo.png"),),
                ]
            ),
            )
        )
    );
  }
}