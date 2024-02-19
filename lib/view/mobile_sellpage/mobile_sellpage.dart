import 'package:flutter/material.dart';

class MobSellpage extends StatefulWidget {
  const MobSellpage({super.key});

  @override
  State<MobSellpage> createState() => _MobSellpageState();
}

class _MobSellpageState extends State<MobSellpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobiles",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Mobile Phones",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
          Text(
            "Accessories",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
          Text(
            "Tablets",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
        ],
      ),
    );
  }
}
