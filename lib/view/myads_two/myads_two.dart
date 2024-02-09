import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';

class MyadsTwo extends StatefulWidget {
  const MyadsTwo({super.key});

  @override
  State<MyadsTwo> createState() => _MyadsTwoState();
}

class _MyadsTwoState extends State<MyadsTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 500,
                child: Image.asset("assets/images/Vector.png"),
              ),
              Positioned(
                  right: 110,
                  bottom: 80,
                  child: Container(
                    child: Image.asset("assets/images/Vector (1).png"),
                  ))
            ],
          ),
        ),
        Text(
          "you havent liked anything yet",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "collect all things you like in one place",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colorconstants.mycustomgreen,
          ),
          child: Center(
            child: Text(
              "Discover",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
