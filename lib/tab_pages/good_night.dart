import 'package:flutter/cupertino.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';
import 'package:shayarifire/widgets/tabs/coustom_tab.dart';

class GoodNightTab extends StatelessWidget {
  const GoodNightTab({super.key});

  @override
  Widget build(BuildContext context) {
    return myTileTab(
      docName: "good_night"
        ,
        context: context
    );
  }
}
