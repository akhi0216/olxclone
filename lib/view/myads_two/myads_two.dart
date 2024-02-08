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
        Image.asset("assets/images/SVector.png"),
        Text(
          "you havent listed anything yet",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "let go of what you dont use anymore",
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
              "post",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
