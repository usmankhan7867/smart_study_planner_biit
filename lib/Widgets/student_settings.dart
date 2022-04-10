import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/login_screen.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_datesheet.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_officehours.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_profile.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_timetable.dart';
import 'package:smart_study_planner_biit/Widgets/student_info_header.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentSettings extends StatelessWidget {
  const StudentSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userName = "Usman Khan";
    final arid = "2018-Arid-1136";
    final student_avatar = "assets/imgs/std_avatar.png";
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
          StudentHeader(
              height: height,
              student_avatar: student_avatar,
              userName: userName,
              arid: arid),
          Divider(),
          SizedBox(height: 50),
          settingBtn(
              width, height, "Profile", () => {Get.to(() => StudentProfile())}),
          SizedBox(height: 20),
          settingBtn(width, height, "Office Hours",
              () => {Get.to(() => StudentOfficehours())}),
          SizedBox(height: 20),
          settingBtn(width, height, "TimeTable",
              () => {Get.to(() => StudentTimeTable())}),
          SizedBox(height: 20),
          settingBtn(width, height, "DateSheet",
              () => {Get.to(() => StudentDateSheet())}),
          SizedBox(height: 20),
          settingBtn(
              width,
              height,
              "Logout",
              () => {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Logout"),
                              content: Text("Do you want to Logout"),
                              actions: [
                                InkWell(
                                  onTap: () => Get.to(Login()),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 30),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("Yes")),
                                ),
                                InkWell(
                                  onTap: () => Get.back(),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: primary),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("No")),
                                ),
                              ],
                            ))
                  }),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Container settingBtn(
      double width, double height, String btnTitle, final func) {
    return Container(
      decoration: BoxDecoration(
          color: primary, borderRadius: BorderRadius.circular(10)),
      width: width * 0.8,
      height: height * 0.07,
      child: InkWell(
        onTap: func,
        child: Center(
            child: Text(btnTitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
      ),
    );
  }
}
