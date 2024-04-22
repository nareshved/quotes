

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
    DetailPage({super.key, required this.mData});

   DocumentSnapshot<Map<String, dynamic>> mData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
      ),

      body:  ListTile(
        title: Text(mData.toString()),

      ),
    );
  }
}