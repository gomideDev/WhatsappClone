import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';
import 'package:whatsapp/views/camera.dart';
import 'package:whatsapp/views/chamadas.dart';
import 'package:whatsapp/views/conversas.dart';
import 'package:whatsapp/views/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.index = 1;
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //primary: false,
        backgroundColor: ColorsApp.greenPrimary,
        title: Text(
          'WhatsApp',
          style: TextStyle(fontSize: 20),
        ),
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.search),
          CupertinoButton(
              padding: EdgeInsets.all(0),
              child: SizedBox(
                child:
                    Image.asset('src/images/iconMenu.png', color: Colors.white),
                height: 25,
                width: 20,
              ),
              onPressed: () {})
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontSize: 17),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'conversas',
            ),
            Tab(
              text: 'status',
            ),
            Tab(
              text: 'chamadas',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Camera(), Conversas(), Status(), Chamadas()],
      ),
    );
  }
}
