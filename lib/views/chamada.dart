import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';

class Chamada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.callBackColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_down),
          onPressed: (){},),
        backgroundColor: ColorsApp.greenPrimary,
        title: Opacity(
          opacity: 0.8,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('src/images/whatsapp.png', width: 20, color: Colors.white,),
            Text('Chamada de voz via whatsapp', style: TextStyle(fontSize: 12, color: Colors.white),)
          ],
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: ColorsApp.greenPrimary,
            child: Opacity(
              opacity: 0.9,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Name', style: TextStyle(color: Colors.white, fontSize: 25),),
                Text('01:00', style: TextStyle(color: ColorsApp.silverLight, fontSize: 15,))
              ],
            ),
            )
          ),
          SizedBox(height: 40,),
          Opacity(
            opacity: 0.5,
            child: Icon(Icons.person, size: 280,)
          ),
          CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.red,
            child: Icon(Icons.call_end),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        color: ColorsApp.greenPrimary,
        child: Opacity(
          opacity: 0.8,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_up, color: Colors.white,),
              onPressed: null,
            ),IconButton(
              icon: Icon(Icons.videocam, color: Colors.white),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.mic_off, color: Colors.white),
              onPressed: null,
            )
          ],
        ),
        )
      ),
    );
  }
}