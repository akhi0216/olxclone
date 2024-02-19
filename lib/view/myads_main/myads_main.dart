import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/myads_one/myads_one.dart';
import 'package:olxclone/view/myads_two/myads_two.dart';

class MyadsMain extends StatefulWidget {
  const MyadsMain({super.key});

  @override
  State<MyadsMain> createState() => _MyadsMainState();
}

class _MyadsMainState extends State<MyadsMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Column(
              children: [
                Image.asset("assets/images/logo_green.png"),
                // Text(
                //   "MY ADS",
                //   style: TextStyle(color: Colorconstants.mycustomgreen),
                // )
              ],
            ),
            bottom: TabBar(labelColor: Colorconstants.mycustomgreen, tabs: [
              Tab(
                text: 'ADS',
              ),
              Tab(
                text: 'favourites',
              )
            ]),
          ),
          body: TabBarView(children: [MyadsOne(), MyadsTwo()]),
        ));
  }
}
