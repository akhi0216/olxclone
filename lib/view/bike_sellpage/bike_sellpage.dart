import 'package:flutter/material.dart';

class BikeSellpage extends StatefulWidget {
  const BikeSellpage({super.key});

  @override
  State<BikeSellpage> createState() => _BikeSellpageState();
}

class _BikeSellpageState extends State<BikeSellpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bikes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Motorcycles",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
          Text(
            "Scooters",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
          Text(
            "Spare Parts",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Divider(),
          Text(
            "Bicycles",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
