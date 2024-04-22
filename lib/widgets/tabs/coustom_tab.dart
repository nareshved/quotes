
import 'package:flutter/material.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';
import '../../tab_pages/detail_page.dart';


/// get firebase data from specific doc

Widget myTileTab ({ String? author, required String docName,required BuildContext context}) {

  return FutureBuilder (
      future: FirebaseProvider.firestore.collection("shayari").doc(docName).get(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator(),);
        } else if (snapshot.hasData) {
          final mData = snapshot.data!;
          return ListView.builder(
              itemCount: mData["shayari"].length,  /// fixed doubts
              itemBuilder: (ctx, index){
            /*    log('${mData["shayari"][index]}');  //// print doubts*/
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(
                      mData: mData["shayari"][index],
                     // sir   mData["shayari"][index],


                    ),),);
                  },
                  leading: const CircleAvatar(backgroundColor: Colors.deepPurple),
                  title: Text(mData["shayari"][index], style: const TextStyle(overflow: TextOverflow.ellipsis),),///fixed doubts
                );
                //0
                //1
                //2
                //3
              });
        }
        else if (snapshot.hasError){
          return const Center(child: Text("wait fixing an error"));
        }

        return const Center(child: Text("mistake by developer"));
      }
  );
}






/*

searching(String search)  {
  List? searchResult = [];
  if(search.isEmpty) {
    return searchResult;
  } else  {
    searchResult = [].where((element) => element.toString().toLowerCase().contains(searchResult));

  }
   
 }















 import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';


/// get firebase data from specific doc

Widget myTileTab ({ String? author, required String docName}) {
  return FutureBuilder (
      future: FirebaseProvider.firestore.collection("shayari").doc(docName).get(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator(),);
        } else if (snapshot.hasData) {
          final mData = snapshot.data!;
          return mData != null ? ListView.builder(
              itemCount: mData["shayari"].length,  /// fixed doubts
              itemBuilder: (ctx, index){
            /*    log('${mData["shayari"][index]}');  //// print doubts*/
                return ListTile(
                  leading: const CircleAvatar(backgroundColor: Colors.deepPurple),
                  title: Text(mData["shayari"][index], style: const TextStyle(overflow: TextOverflow.ellipsis),),///fixed doubts
                );
              }) : const Center(child: Text("no shayari found wait..."));
        }
        else if (snapshot.hasError){
          return const Center(child: Text("wait fixing an error"));
        }

        return const Center(child: Text("mistake by developer"));
      }
  );
}










*/










/*   sir doubts class <<<<<<<<<<
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';


/// get firebase data from specific doc

Widget myTileTab ({ String? author, required String docName}) {
  return FutureBuilder (
      future: FirebaseProvider.firestore.collection("shayari").doc(docName).get(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator(),);
        } else if (snapshot.hasData) {
          final mData = snapshot.data!;
          return mData != null ? ListView.builder(
              itemCount: mData["shayari"].length,  /// fixed doubts
              itemBuilder: (ctx, index){
                log('${mData["shayari"][index]}');  //// print doubts
                return ListTile(
                  leading: const CircleAvatar(backgroundColor: Colors.deepPurple),
                  title: Text(mData["shayari"][index]),   ///fixed doubts
                );

              }) : const Center(child: Text("no shayari found wait..."));
        }
        else if (snapshot.hasError){
          return const Center(child: Text("wait fixing an error"));
        }

        return const Center(child: Text("mistake by developer"));
      }

  );
}

*/




/// get firebase whole collection data

/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';

Widget myTileTab ({ String? author, }) {
  return FutureBuilder <QuerySnapshot<Map<String, dynamic>>> (
      future: FirebaseProvider.firestore.collection("shayari").get(),
      builder: (context, snapshot){
    if(snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator(),);
    } else if (snapshot.hasData) {
      final mData = snapshot.data!.docs;
      return mData.isNotEmpty ? ListView.builder(
          itemCount: mData.length,
          itemBuilder: (ctx, index){
            return ListTile(
              leading: const CircleAvatar(backgroundColor: Colors.green),
              title: Text(mData[index]["shayari"]),
            );

          }) : const Center(child: Text("no shayari found wait..."));
    }
    else if (snapshot.hasError){
      return const Center(child: Text("wait fixing an error"));
    }

    return const Center(child: Text("mistake by developer"));
  }

  );
}

*/

























/*
Widget myTileTab ({required String shayari, String? author}) {
  return ListTile(
    leading: const CircleAvatar(backgroundColor: Colors.blue),
    title: Text(shayari),
    subtitle: Text(author?? ""),
  );
}

Future<Widget> fetchTabsDataFromFirebase () async {

  return FutureBuilder(
      future: FirebaseProvider.firestore.collection("Shayari").get(), builder: (context, snapshot){

        if(snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(),);
        } else if (snapshot.hasData) {
          final mData = snapshot.data!.docs;
          return Lis
        }


        return Container();
  }

  );

} */
