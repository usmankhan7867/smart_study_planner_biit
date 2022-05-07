import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Screens/view_timetable.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentTimeTable extends StatelessWidget {
  const StudentTimeTable({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userName = "Usman Khan";
    final arid = "2018-Arid-1136";
    final student_avatar = "assets/imgs/std_avatar.png";
    final teacherName = "Amir Rasheed";
    final teacherCardFunc = () => {};
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
          SizedBox(width: 90),
          Text("TimeTable",
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
        teacherNameCard(
            width,
            () => {
                  Get.to(ViewTimetable(), arguments: {
                    "cName": teacherName,
                  })
                },
            student_avatar,
            teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
        teacherNameCard(width, teacherCardFunc, student_avatar, teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
        teacherNameCard(width, teacherCardFunc, student_avatar, teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
        teacherNameCard(width, teacherCardFunc, student_avatar, teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
        teacherNameCard(width, teacherCardFunc, student_avatar, teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
        teacherNameCard(width, teacherCardFunc, student_avatar, teacherName),
        Divider(
          indent: 40,
          endIndent: 40,
          height: 20,
          color: black,
        ),
      ],
    )));
  }

  SizedBox teacherNameCard(double width, final teacherCardFunc,
      String student_avatar, String teacherName) {
    return SizedBox(
      width: width * 0.8,
      child: InkWell(
        onTap: teacherCardFunc,
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                student_avatar,
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(teacherName,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23))
          ],
        ),
      ),
    );
  }
}
