import 'package:flutter/material.dart';

import '../tab_pages/favourite.dart';

Widget mDrawerItem ( BuildContext ctx){

  final mq = MediaQuery.of(ctx);

 //const
  return  Column(
    children: [
      ListTile(
        leading: const Icon(Icons.local_grocery_store),
        title: const Text("More Apps"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Download our Other Apps"),
              content: const Text("Thanks For Showing Interest in Our App"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.contact_mail),
        title: const Text("Contact Us"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Contact Us"),
              content: const Text("+91123456789 Please Dial Contact We better assists you"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes Contact')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.follow_the_signs),
        title: const Text("Follow Us"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Follow Us"),
              content: const Text("Follow on Social media Accounts"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('follow')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text("Like Us"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Like Us"),
              content: const Text("Thanks For Like Our App"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.share),
        title: const Text("Share this App"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Share our App"),
              content: const Text("Thanks For Showing Interest in Our App"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.star),
        title: const Text("Rate this App"),
        onTap: (){
          Navigator.pop(ctx);
          showDialog(context: ctx, builder: (ctx){
            return AlertDialog(
              title: const Text("Rate our App"),
              content: const Text("Thanks For Showing Interest in Our App"),
              actions: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(ctx);
                }, child: const Text('No Thanks')),
              ],
            );
          }
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text("Favorite Status"),
        onTap: (){
          Navigator.pop(ctx);
          Navigator.push(ctx, MaterialPageRoute(builder: (context) => const FavouritePage(),));
        },
      ),
      ListTile(
        leading: const Icon(Icons.security),
        title: const Text("Privacy Policy"),
        onTap: (){
          Navigator.pop(ctx);
          Navigator.push(ctx, MaterialPageRoute(builder: (context) => const Scaffold(),));
        },
      ),
      ListTile(
        leading: const Icon(Icons.person_pin_sharp),
        title: const Text("Developer Info"),
        onTap: (){
          Navigator.pop(ctx);
          showModalBottomSheet(
            enableDrag: true,
            context: ctx, builder: (context) => Container(
            height: mq.size.height,
            width: mq.size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView(
                  children: [
                    ClipRRect(
                      borderRadius : const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                      child: Image.asset("assets/images/naresh.jpg", fit: BoxFit.fitWidth, width: mq.size.width, height:  mq.size.height * 0.29,),
                    ),
                    SizedBox(height: mq.size.height * 0.012,),
                     Align(
                         alignment: Alignment.topLeft,
                         child: Container(
                           width: 120,
                             decoration: const BoxDecoration(
                               color: Colors.red,
                               borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                             ),
                             child: const Center(child: Text("Naresh VED", style: TextStyle(fontSize: 16, color: Colors.white),)))),
                    SizedBox(height: mq.size.height * 0.020,),
                    const Align(
                               alignment: Alignment.topLeft,
                               child: Text(
                                   "Hi guys i am Cross Platform App Developer i am use Flutter language for App Development also use Database( Sqf lite, Firebase) "
                               )
                           ),
                    SizedBox(height: mq.size.height * 0.017,),
                    const Center(child: Text("Contact me", style: TextStyle(fontSize: 17),)),
                    const Center(child: Text("Email : nareshved1996@gmail.com",)),
                //    const Center(child: Text("Copyright @ 2024",)),



                  ],
                ),
              ),
            ),
          ),);
        },
      ),
    ],
  );
}












/*

import 'package:flutter/material.dart';

Widget mDrawerItem ( ){

  List<Map<String, dynamic>> drawerItems = [
    {
      "icon" : const Icon(Icons.local_grocery_store_outlined),
      "title" : "more apps",
    },
    {
      "icon" : const Icon(Icons.contact_mail),
      "title" : "more apps",
    }
  ];

  return Expanded(
    child: ListView.builder(
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){
            showDialog(context: context, builder: (ctx){
              return SimpleDialog(title: Text("my aapss"),);
            });
          },
          leading: drawerItems[index]["icon"],
          title: Text(drawerItems[index]["title"]),
        );
      },
    ),
  );
}*/
