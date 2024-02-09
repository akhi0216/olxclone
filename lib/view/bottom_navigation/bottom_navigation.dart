import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/account_page/account_page.dart';
import 'package:olxclone/view/addbutton_page/addbutton_page.dart';
import 'package:olxclone/view/chat_main/chat_main.dart';
import 'package:olxclone/view/home_page/home_page.dart';
import 'package:olxclone/view/myads_main/myads_main.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List page = [HomePage(), ChatMain(), MyadsMain(), AccountPage()];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          selectedItemColor: Colorconstants.mycustomgreen,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            selectedindex = value;

            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'chats'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                label: 'MyAds'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account')
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddbuttonPage(),
              ));
        },
        child: Icon(
          Icons.add,
          color: Colorconstants.mycustomgreen,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: page[selectedindex],
      ),
    );
  }
}
