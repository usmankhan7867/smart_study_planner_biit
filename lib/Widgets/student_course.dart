import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_course_detail.dart';
import 'package:smart_study_planner_biit/Widgets/student_course_card.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class Student_Course extends StatelessWidget {
  const Student_Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userName = "Usman Khan";
    final arid = "2018-Arid-1136";
    final student_avatar = "assets/imgs/std_avatar.png";

    final cName = "COMPILER CONSTRUCTION";
    final cT = "CC";
    final cYear = "FALL-2021 | CC-2021F";
    final cColor = primary;
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text("Smart Study Planner",
              style: TextStyle(
                  fontSize: 30,
                  color: primary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
          SizedBox(height: 5),
          Divider(
            height: 3,
            color: grey,
          ),
          StudentHeader(
              height: height,
              student_avatar: student_avatar,
              userName: userName,
              arid: arid),
          SizedBox(
            width: width * 0.9,
            // padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Courses",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  color: black,
                  fontWeight: FontWeight.w700,
                )),
          ),
          SizedBox(height: 10),
          StudentCourseCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              cName: cName,
              cYear: cYear,
              courseDetails: () {
                Get.to(StudentCourseDetail(), arguments: {"cName": cName});
              }),
          SizedBox(height: 10),
          StudentCourseCard(
              width: width,
              height: height,
              cColor: Colors.black38,
              cT: "IS",
              cName: "Information Security",
              cYear: cYear,
              courseDetails: () {}),
          SizedBox(height: 10),
          StudentCourseCard(
              width: width,
              height: height,
              cColor: Colors.black54,
              cT: "PDC",
              cName: "Parallel Programming",
              cYear: cYear,
              courseDetails: () {}),
          SizedBox(height: 10),
          StudentCourseCard(
              width: width,
              height: height,
              cColor: Colors.grey,
              cT: "EC",
              cName: "English Comprehension",
              cYear: cYear,
              courseDetails: () {}),
          SizedBox(height: 10),
          StudentCourseCard(
              width: width,
              height: height,
              cColor: Colors.redAccent,
              cT: "ITM",
              cName: "Introduction TO Management",
              cYear: cYear,
              courseDetails: () {}),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
