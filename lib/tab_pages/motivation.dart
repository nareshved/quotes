
import 'package:flutter/cupertino.dart';
import 'package:shayarifire/firebase/firebase_provider.dart';
import 'package:shayarifire/widgets/tabs/coustom_tab.dart';

class MotivationTab extends StatelessWidget {
  const MotivationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return myTileTab(
      docName: "motivation",
        context: context
    );
  }
}
