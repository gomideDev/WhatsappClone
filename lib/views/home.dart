import 'package:flutter/material.dart';
import 'package:whatsapp/shared/config/colors.dart';
import 'package:whatsapp/views/chamadas.dart';
import 'package:whatsapp/views/conversas.dart';
import 'package:whatsapp/views/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
        title: Text('WhatsApp', style: TextStyle(fontSize: 20),),
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.menu)
        ],
        bottom: TabBar(
          isScrollable:true,
          indicatorColor: Colors.white,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontSize: 17
          ),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Conversas',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Chamadas',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            Container(
            color: Colors.amber,
          ),
          Conversas(),
          Status(),
          Chamadas()
          ],
      ), 
    );
  }
}