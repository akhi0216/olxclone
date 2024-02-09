import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/bottom_navigation/bottom_navigation.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "whats your name?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "stranger feel so impersonal.you know?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _namecontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'name',
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
                  width: 100,
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
                      builder: (context) => BottomNavigation(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
