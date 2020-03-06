import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';
import 'package:whatsapp/views/conversa.dart';

class Contatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.greenPrimary,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Contatos', style: TextStyle(fontSize: 20),),
            Text('200 contatos', style: TextStyle(fontSize: 12),)
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            onPressed: null,
          ),
          CupertinoButton(
            child: Image.asset('src/images/iconMenu.png', width: 15, color: Colors.white,), 
            onPressed: null)
        ],
      ),
      body: Scrollbar(
        child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: ListView.builder(
        itemCount: 200,
        itemBuilder: (_, index){
          if(index == 0){
            return ListTile(
              contentPadding: EdgeInsets.only(bottom: 10, left: 17),
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundColor: ColorsApp.greenThird,
                child: Icon(Icons.group, color: Colors.white, size: 35,),
              ),
              title: Text('Novo grupo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            );
          }else if(index == 1){
            return ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundColor: ColorsApp.greenThird,
                child: Icon(Icons.person_add, color: Colors.white, size: 35,),
              ),
              title: Text('Novo contato', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            );
          }else{
           return ListTile(
            onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Conversa()));},
            title: Text('Nome', style: TextStyle(fontWeight: FontWeight.bold),),
            isThreeLine: false,
            enabled: true,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
               Text('status')
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: ColorsApp.blue, 
              maxRadius: 25,
              child: Icon(Icons.person, color: Colors.white,),
              ),
          
          );
          }
        },
      ),
      ),
      )
    );
  }
}