import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';

class ChatOne extends StatefulWidget {
  const ChatOne({super.key});

  @override
  State<ChatOne> createState() => _ChatOneState();
}

class _ChatOneState extends State<ChatOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: 55,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 151, 191, 224),
                    borderRadius: BorderRadius.circular(5)),
                child: Text("all"),
              ),
              SizedBox(width: 20),
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colorconstants.mycustomgrey),
                child: Text(
                  "meeting",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Colorconstants.mycustomgrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "unread",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 20),
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: Colorconstants.mycustomgrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "important",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
        SizedBox(height: 200),
        Center(
          child: Container(
            height: 300,
            width: 300,
            // color: Colors.amber,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/images/person.png"),
            //         fit: BoxFit.fill)),
            child: Image.asset("assets/images/purple user icon.png"),
          ),
        ),
        Text(
          "you,ve got no messages so far!!!",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Be the first one to begin a coversation,",
          style: TextStyle(
              color: Colorconstants.mycustomgrey,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colorconstants.mycustomgreen),
              // color: Colorconstants.mycustomgrey,
              child: Center(
                child: Text(
                  "start messaging",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}
