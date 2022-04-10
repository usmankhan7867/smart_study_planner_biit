import 'package:flutter/material.dart';
import 'package:smart_study_planner_biit/config.dart';

class StudentHeader extends StatelessWidget {
  const StudentHeader({
    Key? key,
    required this.height,
    required this.student_avatar,
    required this.userName,
    required this.arid,
  }) : super(key: key);

  final double height;
  final String student_avatar;
  final String userName;
  final String arid;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Image.asset(
                student_avatar,
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Text(userName,
                style: TextStyle(
                    fontSize: 23, color: black, fontWeight: FontWeight.w700)),
            Text(arid,
                style: TextStyle(
                    fontSize: 12, color: black, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
