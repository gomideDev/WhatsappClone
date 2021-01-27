import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';
import 'package:whatsapp/views/chamada.dart';

class Conversa extends StatefulWidget {
  @override
  _ConversaState createState() => _ConversaState();
}

class _ConversaState extends State<Conversa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.conversaColor,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: ColorsApp.blue,
                maxRadius: 18,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nome',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'yesterday',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chamada()));
              },
            ),
            CupertinoButton(
                child: Image.asset(
                  'src/images/iconMenu.png',
                  width: 15,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.tag_faces),
                            onPressed: null,
                          ),
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Digite Sua mensagem'),
                            ),
                          ),
                          IconButton(
                              onPressed: null, icon: Icon(Icons.attach_file)),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.camera_alt),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: null,
                    backgroundColor: ColorsApp.greenPrimary,
                    //mini: true,
                    child: Icon(Icons.mic),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
