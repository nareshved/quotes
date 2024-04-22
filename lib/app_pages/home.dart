import 'package:flutter/material.dart';
import 'package:shayarifire/tab_pages/chat_tab_page.dart';
import 'package:shayarifire/tab_pages/good_morning.dart';
import 'package:shayarifire/tab_pages/good_night.dart';
import 'package:shayarifire/tab_pages/latest.dart';
import 'package:shayarifire/tab_pages/motivation.dart';
import 'package:shayarifire/tab_pages/whatsapp.dart';

import '../drawer/drawer_items.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});


  @override
  State<StatefulWidget> createState() {
   return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                arrowColor: Colors.white,
                  currentAccountPicture: Icon(Icons.person_pin, size: 55, color: Colors.white),
                  accountName: Text("Naresh VED"), accountEmail: Text("nareshved1996@gmail.com")),
              mDrawerItem(context),
            ],
          ),

        ),
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          title: const Text("Quotes"),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "WhatsApp",
              ),
              Tab(
                text: "Latest",
              ),
              Tab(
                text: "Motivation",
              ),
              Tab(
                text: "Good Morning",
              ),
              Tab(
                text: "Good Night",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          /*shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(155)),*/
          onPressed: (){}, child: const Icon(Icons.refresh),
        ),
        body: const TabBarView(
          children: [
            ChatTabPage(),
            WhatsAppTab(),
            LatestTab(),
            MotivationTab(),
            GoodMorningTab(),
            GoodNightTab(),
          ],
        ),
      ),
    );
  }
}