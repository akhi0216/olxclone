import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';

class CarSelltwo extends StatefulWidget {
  const CarSelltwo({super.key});

  @override
  State<CarSelltwo> createState() => _CarSelltwoState();
}

class _CarSelltwoState extends State<CarSelltwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Include some details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Brand*"),
          ),
          SizedBox(height: 7),
          TextField(
            decoration: InputDecoration(hintText: "Year*"),
          ),
          SizedBox(height: 7),
          TextField(
            decoration: InputDecoration(hintText: "Fuel*"),
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Transmission",
                style: TextStyle(
                    color: Colorconstants.mycustomgrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colorconstants.mycustomgrey, width: 2)),
                  child: Center(
                    child: Text("Automatic"),
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colorconstants.mycustomgrey, width: 2)),
                  child: Center(
                    child: Text("Automatic"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextField(
            decoration: InputDecoration(hintText: "KM Driven*"),
          ),
          SizedBox(height: 7),
          TextField(
            decoration: InputDecoration(hintText: "No Of Owners*"),
          ),
          SizedBox(height: 7),
          TextField(
            decoration: InputDecoration(hintText: "Description*"),
          ),
          SizedBox(height: 30),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colorconstants.mycustomgreen),
            child: Center(
              child: Text(
                "Next",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
