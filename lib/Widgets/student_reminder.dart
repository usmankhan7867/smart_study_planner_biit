import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) =>
                    SetReminderDialog(width, height, context));
          },
          child: StudentReminderCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              taskName: taskName,
              taskDesc: taskDesc,
              cName: cName),
        ),
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

  Dialog SetReminderDialog(width, height, context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height * 0.6,
        width: width * 0.8,
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 20),
          Center(
            child: Text("Week # 1",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1)),
          ),
          Center(
            child: Text("Assignment# 1",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    // fontWeight: FontWeight.w600,
                    letterSpacing: 1)),
          ),
          Text("MESSAGE:",
              style: TextStyle(
                  fontSize: 15, color: Colors.white, letterSpacing: 1)),
          SizedBox(height: 10),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              width: width * 0.7,
              height: height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Message.....",
                  style: TextStyle(color: grey, letterSpacing: 1)),
            ),
          ),
          Text("SELECT DATE:",
              style: TextStyle(
                  fontSize: 15, color: Colors.white, letterSpacing: 1)),
          SizedBox(height: 10),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              width: width * 0.7,
              height: height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("2022/3/11",
                  style: TextStyle(color: grey, letterSpacing: 1)),
            ),
          ),
          Text("SELECT TIME:",
              style: TextStyle(
                  fontSize: 15, color: Colors.white, letterSpacing: 1)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("11",
                    style:
                        TextStyle(color: grey, letterSpacing: 2, fontSize: 18)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("30",
                    style:
                        TextStyle(color: grey, letterSpacing: 2, fontSize: 18)),
              ),
              Column(children: [
                Container(
                  width: 10,
                  height: 10,
                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(height: 5),
                Container(
                  width: 10,
                  height: 10,
                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(100)),
                ),
              ]),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("PM",
                    style:
                        TextStyle(color: grey, letterSpacing: 2, fontSize: 18)),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Update",
                      style: TextStyle(
                          color: primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              // Spacer(),
              InkWell(
                onTap: () => {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Logout"),
                            content: Text("Do you want to Logout"),
                            actions: [
                              InkWell(
                                onTap: () {},
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
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Delete",
                      style: TextStyle(
                          color: primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
          SizedBox(height: 50)
        ]),
      ),
    );
  }
}
