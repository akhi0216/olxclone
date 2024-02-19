import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/carsell_pagetwo/carsell_pagetwo.dart';

class CarSellpage extends StatefulWidget {
  const CarSellpage({super.key});

  @override
  State<CarSellpage> createState() => _CarSellpageState();
}

class _CarSellpageState extends State<CarSellpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "what is the location of the car you are selling?",
              style: TextStyle(
                  color: Colorconstants.mycustomblack,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text(
                    "current location",
                    style: TextStyle(color: Colorconstants.mycustomgrey),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text(
                    "somewhere else",
                    style: TextStyle(color: Colorconstants.mycustomgrey),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
            SizedBox(height: 55),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarSelltwo(),
                  )),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colorconstants.mycustomgreen),
                child: Center(
                  child: Text(
                    "continue",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
