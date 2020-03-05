import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';

class Conversas extends StatefulWidget {
  @override
  _ConversasState createState() => _ConversasState();
}

class _ConversasState extends State<Conversas> {

  Iterable<Contact> contacts;

  Future<Iterable<Contact>> getContacts() async{
    return await ContactsService.getContacts(withThumbnails: false);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.message),
        backgroundColor: ColorsApp.greenThird,
        onPressed: (){},
      ),
      body: FutureBuilder<Iterable<Contact>>(
        future: getContacts(),
        builder: (_, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Text('Carregando');
          }else{
            return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          return ListTile(
            title: Text('Nome', style: TextStyle(fontWeight: FontWeight.bold),),
            isThreeLine: false,
            enabled: true,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                (index <= 4)?
                Opacity(child: Image.asset('src/images/msgEntregueIcon.png',width: 12,), opacity: 0.5,):
                (index < 6)?
                Opacity(child: Image.asset('src/images/msgEntregueIcon.png',width: 12, color: ColorsApp.blue,), opacity: 0.5,):
                Opacity(child: Image.asset('src/images/msgNaoEntregueIcon.png',width: 12,), opacity: 0.5,),
                Padding(padding: EdgeInsets.only(right: 20, left: 5),
                child: Text('Mensagem'),
                )
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: ColorsApp.blue, 
              maxRadius: 25,
              child: Icon(Icons.person, color: Colors.white,),
              ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Opacity(child: Text('14:11', style: TextStyle(fontSize: 12),), opacity: 0.6,)
              ],
            ),
          );
        },
      );
          }
        },
      )
    );
  }
}