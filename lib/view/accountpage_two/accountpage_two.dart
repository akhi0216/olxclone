import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:olxclone/view/account_page/account_page.dart';

class AccountpageTwo extends StatefulWidget {
  const AccountpageTwo({super.key});

  @override
  State<AccountpageTwo> createState() => _AccountpageTwoState();
}

class _AccountpageTwoState extends State<AccountpageTwo> {
  TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountPage(),
                )),
            child: Text(
              "save",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Center(
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(label: Text("enter your name")),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(label: Text("something about you")),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "contact information",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
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
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(label: Text("enter your mail id")),
            ),
          ],
        ),
      ),
    );
  }
}
