import 'package:flutter/material.dart';
import 'package:smart_study_planner_biit/Widgets/student_reminder_card.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentReminder extends StatelessWidget {
  const StudentReminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final cName = "COMPILER CONSTRUCTION";
    final taskName = "Quiz# 1";
    final cT = "CC";
    final taskDesc = "Important Message";
    final cColor = primary;
    return Center(
      child: Column(children: [
        SizedBox(height: 10),
        Text("Reminder",
            textAlign: TextAlign.center,
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
        SizedBox(height: 15),
        StudentReminderCard(
            width: width,
            height: height,
            cColor: cColor,
            cT: cT,
            taskName: taskName,
            taskDesc: taskDesc,
            cName: cName),
        StudentReminderCard(
            width: width,
            height: height,
            cColor: cColor,
            cT: cT,
            taskName: "Assignment #1",
            taskDesc: "Important Assignment",
            cName: cName),
        StudentReminderCard(
            width: width,
            height: height,
            cColor: Colors.redAccent,
            cT: "ITM",
            taskName: "Quiz# 1",
            taskDesc: "Important Quiz Need to study Hard...",
            cName: cName),
        StudentReminderCard(
            width: width,
            height: height,
            cColor: Colors.black45,
            cT: cT,
            taskName: "Assignment # 1",
            taskDesc: taskDesc,
            cName: "Information Security"),
      ]),
    );
  }
}
