import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Screens/TeacherScreens/edit_teacher_profile.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({Key? key}) : super(key: key);

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
        SizedBox(height: 40),
        StudentHeader(
            height: height,
            student_avatar: student_avatar,
            userName: userName,
            arid: arid),
        Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: width,
            decoration: BoxDecoration(border: Border.all(color: primary)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // padding: EdgeInsets.symmetric(horizontal: 20),
                Text("Teacher Details",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      color: black,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 20),
                Text("Email Address",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 5),

                Text("amir@biit.edu.pk",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: primary,
                      letterSpacing: 0.5,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 20),
                Text("Name",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 5),

                Text("Amir Rasheed",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 20),

                Text("Pasword",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 5),

                Text("******",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => {Get.to(EditTeacherProfile())},
                    child: Text("EDIT PROFILE",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 23,
                          color: primary,
                          letterSpacing: 0.5,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
              ],
            ))
      ],
    )));
  }
}
