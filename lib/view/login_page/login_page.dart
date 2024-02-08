import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/enter_mobile/enter_mobile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   // height: 150,
            //   // width: 150,
            //   child: Column(
            //     children: [
            //       Image.asset(
            //         "assets/images/logo_green.png",
            //       ),
            //       Text(
            //         "INDIA",
            //         style: TextStyle(
            //             color: Colorconstants.mycustomgreen,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 10),
            //       )
            //       // Image.asset(
            //       //   "assets/images/INDIA.png",
            //       // ),
            //     ],
            // ),
            // )
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                "assets/images/logo_green.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 10,
              width: 37,
              child: Image.asset(
                "assets/images/INDIA.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 100,
            ),

            InkWell(
              child: Container(
                padding: EdgeInsets.all(10),
                width: 300,
                color: Colorconstants.mycustomgrey,
                child: Row(
                  children: [
                    Icon(Icons.phone_iphone),
                    Text(
                      "continue with phone",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterMobile(),
                    ));
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              color: Colorconstants.mycustomgrey,
              child: Row(
                children: [
                  Icon(Icons.phone_iphone),
                  Text(
                    "continue with Google",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
