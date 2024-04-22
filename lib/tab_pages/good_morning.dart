import 'package:flutter/cupertino.dart';
import 'package:shayarifire/widgets/tabs/coustom_tab.dart';

class GoodMorningTab extends StatelessWidget {
  const GoodMorningTab({super.key});

  @override
  Widget build(BuildContext context) {
   return myTileTab(
     docName: "good_morning"
       ,
       context: context
      );
  }
}
