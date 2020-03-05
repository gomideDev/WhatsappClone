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
            mini: true,
            backgroundColor: ColorsApp.silver,
            onPressed: (){},
            child: Opacity(child: Image.asset('src/images/iconLapis.png', width: 20,), opacity: 0.5,)
            ),
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          if(index == 0){
            return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: ListTile(
            title: Text('Meu Status', style: TextStyle(fontWeight: FontWeight.bold),),
            isThreeLine: false,
            enabled: true,
            subtitle: Text('Toque para atualizar seu status'),
            leading: CircleAvatar(
              backgroundColor: Colors.white, 
              maxRadius: 25,
              backgroundImage: AssetImage('src/images/avatar.png'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Icon(
                        Icons.add_circle, 
                        color: ColorsApp.greenThird,
                        ), 
                  )
                ],
              ),
              ),
              onTap: (){},
          ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.09, color: Colors.black38),
                color: ColorsApp.silverLight
              ),
              child: Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
                    child: Opacity(
                      opacity: 0.5,
                      child: Text('Atualizações recentes', style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                    )
                  ],
                ),
            ),
          ]
        ),
      );
          }else{
            return ListTile(
            title: Text('Nome', style: TextStyle(fontWeight: FontWeight.bold),),
            isThreeLine: false,
            enabled: true,
            subtitle: Opacity(opacity: 0.8, child: Text('há 20 minutos', style: TextStyle(fontWeight: FontWeight.bold),),),
            leading: Container(
              child: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
              foregroundColor: ColorsApp.greenPrimary,
              backgroundColor: ColorsApp.blue, 
              child: Icon(Icons.person, color: Colors.white,),
              ),
              decoration: new BoxDecoration(
                color: Colors.white, 
                shape: BoxShape.circle,
              )
              ),
              width: 50.0,
              height: 50.0,
              padding: const EdgeInsets.all(2.0), 
              decoration: new BoxDecoration(
                color: ColorsApp.greenSecondary,
                shape: BoxShape.circle,
              )
            ),
            onTap: (){

            },
          );
          }
        },
      )
    );
  }
}