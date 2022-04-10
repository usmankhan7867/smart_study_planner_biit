import 'package:flutter/material.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentNotificationCard extends StatelessWidget {
  const StudentNotificationCard({
    Key? key,
    required this.width,
    required this.height,
    required this.cColor,
    required this.cT,
    required this.messsage,
    required this.cName,
  }) : super(key: key);

  final double width;
  final double height;
  final Color cColor;
  final String cT;
  final String messsage;
  final String cName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width * 0.8,
          height: height * 0.1,
          child: Row(
            children: [
              Container(
                width: width * 0.17,
                height: 70,
                decoration: BoxDecoration(
                    color: cColor, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(cT,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: "Helvetica",
                        ))),
              ),
              SizedBox(
                width: width * 0.04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(messsage,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1)),
                  SizedBox(height: 2),
                  Text(cName,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontFamily: "Helvetica",
                          letterSpacing: 0.05)),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 0.9,
          width: width * 0.8,
          color: grey,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
