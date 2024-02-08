import 'dart:async';

import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/login_page/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mycustomgreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
          ),
          Column(
            children: [
              Center(
                child: Container(
                  height: 56,
                  width: 100,
                  child: Image.asset("assets/images/OLX-Logo 1.png"),
                ),
              ),
              SizedBox(
                child: Text(
                  "INDIA",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 290),
          Text(
            "india's leading marketplace",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
