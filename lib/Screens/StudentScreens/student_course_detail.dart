import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentCourseDetail extends StatelessWidget {
  const StudentCourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                SizedBox.expand(),
                Chex
              ],
            ))
        .toList();
    final iterateWeekData_assig = w1_assig.map((assig) => Text(assig)).toList();
    final iterateWeekData_quiz = w1_quiz.map((quiz) => Text(quiz)).toList();
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
          SizedBox(width: 30),
          Text(Get.arguments['cName'],
              style: TextStyle(
                  fontSize: 20,
                  color: primary,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1)),
        ]),
        SizedBox(height: 5),
        Container(
          // width: width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Week-1(4 October-10 October)",
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
        )
      ],
    )));
  }
}
