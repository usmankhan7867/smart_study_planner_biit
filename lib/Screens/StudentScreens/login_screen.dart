// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Controllers/student_controller.dart';
import 'package:smart_study_planner_biit/Screens/StudentScreens/student_dashboard_screen.dart';
import 'package:smart_study_planner_biit/Screens/TeacherScreens/teacher_dashboard.dart';
import 'package:smart_study_planner_biit/config.dart';

class Login extends StatelessWidget {
  // const Login({Key? key}) : super(key: key);
  final StudentController studentController = Get.put(StudentController());
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: primary,
          child: Center(
            child: Column(
              children: [
                Container(
                    width: width * 0.4,
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Image.asset("assets/imgs/login_avatar.png")),
                SizedBox(height: height * 0.03),
                Text("Smart Study Planner",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: height * 0.02),
                Obx(
                  () => Text(studentController.students.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(height: height * 0.03),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.09),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email / Username',
                              prefixIcon: Icon(Icons.email_outlined,
                                  color: Color(0xff73B1BA)),
                            ),
                          ),
                          SizedBox(height: height * 0.04),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline_rounded,
                                  color: Color(0xff73B1BA)),
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Align(
                              alignment: Alignment(1, 0),
                              child: Text("Forget Password?",
                                  style: TextStyle(color: Color(0xff73B1BA)))),
                          SizedBox(height: height * 0.1),
                          Row(
                            children: [
                              Text("Sign In",
                                  style: TextStyle(
                                      color: Color(0xff73B1BA),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1)),
                              Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () => {
                                        // Get.to(Student_DashBoard())
                                        Get.to(TeacherDashboard())
                                        // studentController.fetchStudents()
                                      },
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff73B1BA)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
