import 'package:flutter/material.dart';

import './pages/camera_screen.dart';
import './pages/chart_screen.dart';
import './pages/status_screen.dart';
import './pages/calls_screen.dart';
class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation:0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}