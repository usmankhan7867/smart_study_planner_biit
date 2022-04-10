import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/config.dart';

class EditStudentProfile extends StatelessWidget {
  const EditStudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final student_avatar = "assets/imgs/std_avatar.png";

    final updataeStudentInfo = () {};
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
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
            SizedBox(width: 10),
            Text("Smart Study Planner",
                style: TextStyle(
                    fontSize: 30,
                    color: primary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1)),
          ]),
          SizedBox(height: 10),
          Container(
              margin: EdgeInsets.all(20),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              width: width,
              decoration: BoxDecoration(border: Border.all(color: primary)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // padding: EdgeInsets.symmetric(horizontal: 20),
                  Text("Edit User Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: black,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 10),
                  Text("Email Address",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'usmanali7867@gmail.com',
                    ),
                  ),

                  // SizedBox(height: 20),
                  Text("Name",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Usman Khan',
                    ),
                  ),
                  // SizedBox(height: 20),
                  Text("Arid# NO",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '2018-ARID-1136',
                    ),
                  ),
                  // SizedBox(height: 20),
                  Text("Pasword",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '*******',
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: height * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              student_avatar,
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.4,
                            child: DottedBorder(
                              color: primary,
                              strokeWidth: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.file_upload_outlined,
                                      color: primary, size: 40),
                                  Center(
                                    child: Text("BROWSE TO UPLOAD",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: primary,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: width,
                    height: height * 0.06,
                    child: Material(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        splashColor: primary,
                        onTap: updataeStudentInfo,
                        child: Text("Update",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    )));
  }
}
