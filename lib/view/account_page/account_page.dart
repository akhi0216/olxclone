import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';

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
                  onPressed: () {},
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
                color: Colors.grey, fontSize: 8, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
