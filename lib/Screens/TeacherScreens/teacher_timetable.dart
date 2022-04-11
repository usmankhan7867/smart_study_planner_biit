import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class TeacherTimetable extends StatelessWidget {
  const TeacherTimetable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userName = "Amir Rasheed";
    final arid = "amir@biit.edu.pk";
    final student_avatar = "assets/imgs/std_avatar.png";
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: primary,
                  )),
              SizedBox(width: 30),
              Text("Smart Study Planner",
                  style: TextStyle(
                      fontSize: 30,
                      color: primary,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1)),
            ]),
            SizedBox(height: 30),
            StudentHeader(
                height: height,
                student_avatar: student_avatar,
                userName: userName,
                arid: arid),
            Divider(height: 50, color: grey),
            Text("TimeTable",
                style: TextStyle(
                    fontSize: 30,
                    color: primary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1)),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.5,
              height: height * 0.12,
              child: DottedBorder(
                color: primary,
                strokeWidth: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.file_upload_outlined, color: primary, size: 40),
                    Center(
                      child: Text("BROWSE TO UPLOAD",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: primary,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 120),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: primary, spreadRadius: 1, blurRadius: 5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: InkWell(
                  child: Text("View TimeTable",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 20,
                          color: primary)),
                ))
          ],
        ),
      ),
    );
  }
}
