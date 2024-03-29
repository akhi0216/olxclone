import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/accountpage_two/accountpage_two.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo_green.png"))),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Image.asset("assets/images/purple user icon.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Admin",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 400,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colorconstants.mycustomgreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountpageTwo(),
                        ));
                  },
                  child: Text(
                    "view and edit profile",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "3 more left",
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 70,
                color: Colors.amber,
              ),
              Container(
                height: 30,
                width: 70,
                color: Colors.amber,
              ),
              Container(
                height: 30,
                width: 70,
                color: Colors.grey,
              ),
              Container(
                height: 30,
                width: 70,
                color: Colors.grey,
              ),
              Container(
                height: 30,
                width: 70,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "we are built on trust.help one another to get to know each other better",
            style: TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),

// list

          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.black,
                  ),
                  title: Text(
                    "My orders   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                // 2
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: Text(
                    "settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                // 3rd
                ListTile(
                  leading: Icon(
                    Icons.support_agent,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Help&support",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                // 4
                ListTile(
                  leading: Icon(
                    Icons.public,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Help&support",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
