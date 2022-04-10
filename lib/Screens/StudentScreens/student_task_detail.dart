import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentTaskDetail extends StatelessWidget {
  const StudentTaskDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Center(
              child: Text(Get.arguments["taskName"],
                  style: TextStyle(
                      fontSize: 35,
                      color: black,
                      // fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
            ),
            SizedBox(height: 20),
            Text("TOPICS :",
                style: TextStyle(
                    fontSize: 15,
                    color: black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1)),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                width: width * 0.7,
                height: height * 0.2,
                decoration: BoxDecoration(
                    border: Border.all(color: primary),
                    borderRadius: BorderRadius.circular(20)),
                child: ListView(
                  children: [
                    Text("1- Intro To Compiler"),
                    Text("1- Diff between Compiler and Interperater"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("START DATE AND TIME :",
                style: TextStyle(
                    fontSize: 15,
                    color: black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1)),
            SizedBox(height: 20),
            DisplayTaskDateTime(),
            SizedBox(height: 30),
            Text("END DATE AND TIME :",
                style: TextStyle(
                    fontSize: 15,
                    color: black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1)),
            SizedBox(height: 20),
            DisplayTaskDateTime(),
            // SizedBox(height: 60),
            Spacer(),

            Row(
              children: [
                Text("Set Reminder",
                    style: TextStyle(
                        fontSize: 30,
                        color: primary,
                        // fontWeight: FontWeight.w600,
                        letterSpacing: 1)),
                Spacer(),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => SetReminderDialog(width, height));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                        color: primary,
                        // border: Border.all(color: primary),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        size: 30, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    ));
  }

  Dialog SetReminderDialog(width, height) {
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
            children: [
              Text("Set",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      // fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.arrow_forward_ios_outlined,
                      size: 30, color: primary),
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

class DisplayTaskDateTime extends StatelessWidget {
  const DisplayTaskDateTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(20)),
          child: Text("2022/4/11",
              style: TextStyle(letterSpacing: 2, fontSize: 18)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(20)),
          child: Text("11", style: TextStyle(letterSpacing: 2, fontSize: 18)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(20)),
          child: Text("30", style: TextStyle(letterSpacing: 2, fontSize: 18)),
        ),
        Column(children: [
          Container(
            width: 10,
            height: 10,
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(height: 5),
          Container(
            width: 10,
            height: 10,
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(100)),
          ),
        ]),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(20)),
          child: Text("PM", style: TextStyle(letterSpacing: 2, fontSize: 18)),
        ),
      ],
    );
  }
}
