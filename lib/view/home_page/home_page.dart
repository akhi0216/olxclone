import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/view/grid_db/grid_db.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> categories = [
    {"image": "assets/images/passenger car front view.png", "title": "CARS"},
    {"image": "assets/images/house.png", "title": "PROPERTIES"},
    {
      "image": "assets/images/mobile store with grocery items.png",
      "title": "MOBILES"
    },
    {"image": "assets/images/travel suitcase.png", "title": "JOBS"},
    {"image": "assets/images/furniture.png", "title": "FURNITURES"},
    {"image": "assets/images/bikes.png", "title": "BIKES"},
  ];
  // final locname_cntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/images/logo_green.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colorconstants.mycustomgreen,
                    ),
                    Text("pune,maharashtra")
                  ],
                ),
              ],
            ),
            // SizedBox(height: 20),
            //end of first row
            // second row
            // Row(
            //   children: [
            //     TextField(
            //       controller: locname_cntrl,
            //       decoration: InputDecoration(
            //           labelText: "find cars,phones and more...",
            //           prefixIcon: Icon(
            //             Icons.search_off_outlined,
            //             color: Colorconstants.mycustomgreen,
            //           )),
            //     )
            //   ],
            // )
// 2nd row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 300,
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    title: Text("find cars,phones and more..."),
                  ),
                ),
                // Icon(Icons.notifications)
              ],
            ),
            // third row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "browse categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            // 4th
            // Container(
            //   height: 100,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage("assets/images/propertieshome.png"))),
            // ),
            Container(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(categories[index]["image"]),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(height: 5),
                          Text(categories[index]["title"])
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 50),
                  itemCount: categories.length),
            ),
            // 5th
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "fresh recommendations",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // 6th
            Expanded(
              child: GridView.builder(
                itemCount: griddetails.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 7, crossAxisSpacing: 5),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 2, color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          griddetails[index]["image"]))),
                            ),
                          ),
                          Positioned(
                              top: 4,
                              right: 16,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.black,
                                ),
                              ))
                        ],
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(griddetails[index]["title1"]),
                            Text(griddetails[index]["title2"]),
                            Text(griddetails[index]["title3"])
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
