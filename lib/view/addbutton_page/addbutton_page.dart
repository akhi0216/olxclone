import 'package:flutter/material.dart';

class AddbuttonPage extends StatefulWidget {
  const AddbuttonPage({super.key});

  @override
  State<AddbuttonPage> createState() => _AddbuttonPageState();
}

class _AddbuttonPageState extends State<AddbuttonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //  1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.directions_car),
                      Text(
                        "cars",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apartment),
                      Text(
                        "properties",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            // 2nd

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.smartphone),
                      Text(
                        "mobiles",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.work),
                      Text(
                        "jobs",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),

            // 3rd
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bike_scooter),
                      Text(
                        "bikes",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.kitchen),
                      Text(
                        "electronics",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            // 4th
          ],
        ),
      ),
    );
  }
}
