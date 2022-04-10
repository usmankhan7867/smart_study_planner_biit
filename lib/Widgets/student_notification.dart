import 'package:flutter/material.dart';
import 'package:smart_study_planner_biit/Widgets/student_notification_card.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentNotification extends StatelessWidget {
  const StudentNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final cName = "COMPILER CONSTRUCTION";

    final cT = "CC";
    final messsage = "Assignment# 1 isdue";
    final cColor = primary;
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text("Notifications",
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
          StudentNotificationCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              messsage: messsage,
              cName: cName),
          StudentNotificationCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              messsage: messsage,
              cName: cName),
          StudentNotificationCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              messsage: messsage,
              cName: cName),
          StudentNotificationCard(
              width: width,
              height: height,
              cColor: cColor,
              cT: cT,
              messsage: messsage,
              cName: cName),
        ],
      ),
    );
  }
}
