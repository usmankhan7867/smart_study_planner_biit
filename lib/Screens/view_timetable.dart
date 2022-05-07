import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/config.dart';

class ViewTimetable extends StatelessWidget {
  const ViewTimetable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: primary,
                )),
            SizedBox(width: 80),
            Text("DATESHEET",
                style: TextStyle(
                    fontSize: 30,
                    color: primary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1)),
          ]),
          Divider(
            height: 40,
            color: black,
          ),
          Text(Get.arguments['cName'],
              style: TextStyle(
                  fontSize: 30,
                  color: primary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
          SizedBox(height: 40),
          Image(image: AssetImage("assets/imgs/DateSheet.png"))
        ],
      ),
    ));
  }
}
