import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/callsScreen.dart';
import 'package:whatsapp_clone/screens/cameraScreen.dart';
import 'package:whatsapp_clone/screens/chatsScreen.dart';
import 'package:whatsapp_clone/screens/statusScreen.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({super.key});

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text("Whatsapp"),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Color.fromARGB(255, 198, 210, 208),
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: Icon(Icons.message),
          onPressed: () => {}),
    );
  }
}
