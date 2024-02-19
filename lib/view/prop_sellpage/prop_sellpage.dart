import 'package:flutter/material.dart';

class PropSellpage extends StatefulWidget {
  const PropSellpage({super.key});

  @override
  State<PropSellpage> createState() => _PropSellpageState();
}

class _PropSellpageState extends State<PropSellpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Properties",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "For sale:House&Apartments",
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
              title: Text(
                "For Rent:House&Apartments",
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
              title: Text(
                "Lands&Plots",
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
              title: Text(
                "PG&Guest House",
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
      ),
    );
  }
}
