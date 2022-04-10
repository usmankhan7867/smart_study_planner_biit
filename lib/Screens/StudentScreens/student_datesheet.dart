import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentDateSheet extends StatelessWidget {
  const StudentDateSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userName = "Usman Khan";
    final arid = "2018-Arid-1136";
    final student_avatar = "assets/imgs/std_avatar.png";
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
            SizedBox(height: 10),
            StudentHeader(
                height: height,
                student_avatar: student_avatar,
                userName: userName,
                arid: arid),
            Divider(
              height: 40,
              color: black,
            ),
            Image(image: AssetImage("assets/imgs/DateSheet.png"))
          ],
        ),
      ),
    );
  }
}
