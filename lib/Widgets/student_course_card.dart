import 'package:flutter/material.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentCourseCard extends StatelessWidget {
  const StudentCourseCard({
    Key? key,
    required this.width,
    required this.height,
    required this.cColor,
    required this.cT,
    required this.cName,
    required this.cYear,
    required this.courseDetails,
  }) : super(key: key);

  final double width;
  final double height;
  final Color cColor;
  final String cT;
  final String cName;
  final String cYear;
  final courseDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8,
      height: height * 0.1,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: courseDetails,
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
                Text(cName,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.05)),
                Text(cYear,
                    style: TextStyle(
                      fontSize: 12,
                      color: grey,
                      fontFamily: "Helvetica",
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
