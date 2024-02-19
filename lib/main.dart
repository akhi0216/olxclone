import 'package:flutter/material.dart';
import 'package:olxclone/view/accountpage_two/accountpage_two.dart';
import 'package:olxclone/view/addbutton_page/addbutton_page.dart';
import 'package:olxclone/view/bottom_navigation/bottom_navigation.dart';
import 'package:olxclone/view/chat_main/chat_main.dart';
import 'package:olxclone/view/enter_mobile/enter_mobile.dart';
import 'package:olxclone/view/home_page/home_page.dart';
import 'package:olxclone/view/login_page/login_page.dart';
import 'package:olxclone/view/myads_main/myads_main.dart';
import 'package:olxclone/view/sell_page/sell_page.dart';
import 'package:olxclone/view/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
