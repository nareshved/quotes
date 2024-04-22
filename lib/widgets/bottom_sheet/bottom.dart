import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';

class Controllers extends StatelessWidget{
  const Controllers({super.key});



 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

 static TextEditingController shayariController = TextEditingController();
 static TextEditingController authorController = TextEditingController();

}

Widget bottomSheetColumn() {
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          controller: Controllers.shayariController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
            hintText: "add new",
            label: Text("Shayari"),
          )
        ),
        TextFormField(
          controller: Controllers.authorController,
            maxLines: 1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration (
              hintText: "author name",
              label: Text("author"),
            )
        ),


        const SizedBox(height: 15,),

       ElevatedButton(onPressed: (){

         FirebaseProvider.firestore.collection(FirebaseProvider.SHAYARI_COLLECTION)
             .doc(FirebaseProvider.CHAT_TAB_COLLECTION).set({
           FirebaseProvider.SHAYARI_COLLECTION : "saudsudusdus",});
       }, child: const Text("add shayari"),)

       ],
    ),
  );
}