import 'package:flutter/material.dart';
import 'package:shayarifire/tab_pages/Sandeep_Maheshwari.dart';
import 'package:shayarifire/tab_pages/Shiv_Khera.dart';
import 'package:shayarifire/tab_pages/Sonu_Sharma.dart';
import 'package:shayarifire/tab_pages/Ujjwal_Patni.dart';
import 'package:shayarifire/tab_pages/Vivek_Bindra.dart';

import '../drawer/drawer_items.dart';
import '../firebase/firebase_provider.dart';


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

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                arrowColor: Colors.white,
                  currentAccountPicture: Icon(Icons.person_pin, size: 55, color: Colors.white),
                  accountName: Text("Naresh VED"), accountEmail: Text("nkraj021@gmail.com")),
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
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: const Text("Quotes"),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Sandeep Maheshwari",
              ),
              Tab(
                text: "Sonu Sharma",
              ),
              Tab(
                text: "Shiv Khera",
              ),
              Tab(
                text: "Ujjwal Patni",
              ),
              Tab(
                text: "Vivek Bindra",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          /*shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(155)),*/
          onPressed: (){
            setState(() {
              FirebaseProvider.firestore.collection("quotes").get();
            });
          }, child: const Icon(Icons.refresh),
        ),
        body: const TabBarView(
          children: [
            SandeepMaheshwari(),
           SonuSharma(),
            ShivKhera(),
            UjjwalPatni(),
            VivekBindra(),
          ],
        ),
      ),
    );
  }
}