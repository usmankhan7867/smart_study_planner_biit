import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/edit_student_profile.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

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
          SizedBox(width: 10),
          Text("Smart Study Planner",
              style: TextStyle(
                  fontSize: 30,
                  color: primary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
        ]),
        SizedBox(height: 5),
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
                Text("User Details",
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

                Text("usmanali7867@gmail.com",
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

                Text("Usman Khan",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 20),
                Text("Arid# NO",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 5),

                Text("2018-ARID-1136",
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
                    onTap: () => {Get.to(EditStudentProfile())},
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
