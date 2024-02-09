import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/bottom_navigation/bottom_navigation.dart';
import 'package:olxclone/view/home_page/home_page.dart';
import 'package:olxclone/view/name_page/name_page.dart';

class EnterMobile extends StatefulWidget {
  const EnterMobile({super.key});

  @override
  State<EnterMobile> createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
              color: Colorconstants.mycustomblack, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/purple user icon.png"),
            ),
            Text(
              "Enter your phone number",
              style: TextStyle(
                  fontSize: 30,
                  color: Colorconstants.mycustomblack,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "we will send you a verification code on the same number",
              style: TextStyle(
                  fontSize: 17,
                  color: Colorconstants.mycustomblack,
                  fontWeight: FontWeight.bold),
            ),
            // Row(
            //   children: [
            //     CountryCodePicker(),
            //   ],
            // ),
            Row(
              children: [
                CountryCodePicker(),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 500),
            InkWell(
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colorconstants.mycustomgreen),
                  // color: Colorconstants.mycustomgrey,
                  child: Center(
                    child: Text(
                      "next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NamePage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
