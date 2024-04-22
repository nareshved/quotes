import 'package:flutter/material.dart';
import 'package:shayarifire/widgets/tabs/coustom_tab.dart';

class ChatTabPage extends StatelessWidget {
  const ChatTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return myTileTab(
      docName: "chat",
          context: context
    );
}
}