import 'package:flutter/material.dart';

class JobSellpage extends StatefulWidget {
  const JobSellpage({super.key});

  @override
  State<JobSellpage> createState() => _JobSellpageState();
}

class _JobSellpageState extends State<JobSellpage> {
  List<String> jobnames = [
    "data entry&back office",
    "sales&marketing",
    "driver",
    "office assistant",
    "teacher",
    "cook",
    "accountant",
    "designer",
    "delivery&collection",
    "operator&technician",
    "hotel&travel executive",
    "other jobs"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jobs",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Text(jobnames[index]),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: jobnames.length))
        ],
      ),
    );
  }
}
