import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_task_detail.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentCourseDetail extends StatelessWidget {
  const StudentCourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final weekNo = "Week-1 (4 Oct - 10 Oct)";
    var w1_outlines = [
      "Introduction to Comipler",
      "Diff b/w Comipler and Interperater",
    ];
    var w1_assig = ["Assignment# 1"];
    var w1_quiz = ["Quizz# 1"];
    final iterateWeekData_outline = w1_outlines
        .map((outline) => Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined, size: 10),
                SizedBox(width: 10),
                Text(outline),
                Spacer(),
                SizedBox(
                  height: 10,
                  child: Checkbox(
                      value: true,
                      onChanged: (value) {
                        value = false;
                      }),
                )
              ],
            ))
        .toList();
    final iterateWeekData_assig = w1_assig
        .map((assig) => Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined, size: 10),
                SizedBox(width: 10),
                InkWell(
                    onTap: () {
                      Get.to(StudentTaskDetail(),
                          arguments: {"taskName": assig});
                    },
                    child: Text(assig)),
                Spacer(),
                SizedBox(
                  height: 10,
                  child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        value = false;
                      }),
                )
              ],
            ))
        .toList();
    final iterateWeekData_quiz = w1_quiz
        .map((quiz) => Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined, size: 10),
                SizedBox(width: 10),
                InkWell(
                    onTap: () {
                      Get.to(StudentTaskDetail(), arguments: {
                        "taskName": quiz,
                        "cName": Get.arguments['cName']
                      });
                    },
                    child: Text(quiz)),
                Spacer(),
                SizedBox(
                  height: 10,
                  child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        value = false;
                      }),
                )
              ],
            ))
        .toList();
    return SafeArea(
        child: Scaffold(
            body: ListView(
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
          SizedBox(width: 30),
          Text(Get.arguments['cName'],
              style: TextStyle(
                  fontSize: 20,
                  color: primary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
        ]),
        SizedBox(height: 5),
        StudentCourseDetailWeek(
            width: width,
            weekNo: weekNo,
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-2 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-3 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-4 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-5 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-6 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-7 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
        StudentCourseDetailWeek(
            width: width,
            weekNo: "Week-8 (4 Oct - 10 Oct)",
            iterateWeekData_outline: iterateWeekData_outline,
            iterateWeekData_quiz: iterateWeekData_quiz,
            iterateWeekData_assig: iterateWeekData_assig),
      ],
    )));
  }
}

class StudentCourseDetailWeek extends StatelessWidget {
  const StudentCourseDetailWeek({
    Key? key,
    required this.width,
    required this.weekNo,
    required this.iterateWeekData_outline,
    required this.iterateWeekData_quiz,
    required this.iterateWeekData_assig,
  }) : super(key: key);

  final double width;
  final String weekNo;
  final List<Row> iterateWeekData_outline;
  final List<Row> iterateWeekData_quiz;
  final List<Row> iterateWeekData_assig;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(weekNo,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: black,
                  letterSpacing: 1)),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...iterateWeekData_outline,
                ...iterateWeekData_quiz,
                ...iterateWeekData_assig
              ],
            ),
          ),
          Divider(height: 10, color: black)
        ],
      ),
    );
  }
}
