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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          return ListTile(
            title: Text('Nome', style: TextStyle(fontWeight: FontWeight.bold),),
            isThreeLine: false,
            enabled: true,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                (index <= 5 )?
                Icon(Icons.call_received, color: ColorsApp.greenThird, size: 15,):
                Icon(Icons.call_received, color: Colors.red, size: 15,),
                Padding(padding: EdgeInsets.only(right: 20, left: 5),
                child: Opacity(
                  opacity: 0.8,
                  child: Text('Ontem 20:30', style: TextStyle(fontWeight: FontWeight.bold),),
                )
                ),
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: ColorsApp.blue, 
              maxRadius: 25,
              child: Icon(Icons.person, color: Colors.white,),
              ),
            trailing: Icon(Icons.phone, color: ColorsApp.greenPrimary,)
          );
        },
      ),
    );
  }
}