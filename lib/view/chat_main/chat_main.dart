import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/chat_one/chat_one.dart';
import 'package:olxclone/view/chat_three/chat_three.dart';
import 'package:olxclone/view/chat_two/chat_two.dart';

class ChatMain extends StatefulWidget {
  const ChatMain({super.key});

  @override
  State<ChatMain> createState() => _ChatMainState();
}

class _ChatMainState extends State<ChatMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Image.asset("assets/images/logo_green.png"),
            bottom: TabBar(labelColor: Colorconstants.mycustomgreen, tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'BUYING'),
              Tab(text: 'SELLING')
            ]),
          ),
          body: TabBarView(children: [ChatOne(), ChatTwo(), ChatThree()]),
        ));
  }
}
