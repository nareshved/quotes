import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
   DetailPage({super.key, required this.mData, required this.publisher,});

  String mData;
  String publisher;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text(publisher),
      ),
      body: ListView(
        children: [
           Center(child: Text("<<${mData.length.toString()}>>")),
          SizedBox(
            width: mq.size.width,
            height: mq.size.height * 0.35,
            child: Card(
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(mData, style: const TextStyle(fontSize: 16),),
                  trailing: IconButton(tooltip: "Favourite",
                    onPressed: (){},
                      icon: const Icon(Icons.favorite, color: Colors.red,)),
                  //  subtitle: Text("Quote Publisher : $publisher",),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}







/*SizedBox(
        width: mq.size.width,
        height: mq.size.height * 0.35,
        child: Card(
          margin: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(mData, style: const TextStyle(fontSize: 16),),
            //  subtitle: Text("Quote Publisher : $publisher",),
            ),
          ),
        ),
      )*/





/*

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

String mData;

DetailPage({super.key, required this.mData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
      ),

      body:  ListTile(
        title: Text(mData),

      ),
    );
  }
}*/
