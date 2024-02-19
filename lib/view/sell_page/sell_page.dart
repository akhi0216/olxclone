import 'package:flutter/material.dart';
import 'package:olxclone/utilis/color_constants/color_constants.dart';
import 'package:olxclone/utilis/dummy_db.dart';
import 'package:olxclone/view/bike_sellpage/bike_sellpage.dart';
import 'package:olxclone/view/car_sellpage/car_sellpage.dart';
import 'package:olxclone/view/job_sellpage/job_sellpage.dart';
import 'package:olxclone/view/mobile_sellpage/mobile_sellpage.dart';
import 'package:olxclone/view/more_sellpage/more_sellpage.dart';
import 'package:olxclone/view/prop_sellpage/prop_sellpage.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // backgroundColor: Colorconstants.mycustomgreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: GridView.builder(
            itemCount: Dummydb.sellimglist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarSellpage(),
                    ),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PropSellpage(),
                    ),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MobSellpage(),
                    ),
                  );
                } else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobSellpage(),
                    ),
                  );
                } else if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BikeSellpage(),
                    ),
                  );
                } else if (index == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreSellpage(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colorconstants.mycustomblack, width: 2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        Dummydb.sellimglist[index]["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      Dummydb.sellimglist[index]["title"]!,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),

            // Column(
            //       children: [
            //         Container(
            //           height: 100,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: NetworkImage(
            //                     Dummydb.sellimglist[index]["image"]!),
            //                 fit: BoxFit.cover),
            //           ),
            //         ),
            //         Text(
            //           Dummydb.sellimglist[index]["title"]!,
            //           style: TextStyle(color: Colorconstants.mycustomblack),
            //         )
            //       ],
            //     ),
          ),
        ),
      ),
    );
  }
}
