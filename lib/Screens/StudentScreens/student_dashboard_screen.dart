import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Widgets/student_course.dart';
import 'package:smart_study_planner_biit/Widgets/student_notification.dart';
import 'package:smart_study_planner_biit/Widgets/student_reminder.dart';
import 'package:smart_study_planner_biit/Widgets/student_settings.dart';
import 'package:smart_study_planner_biit/config.dart';

class Student_DashBoard extends StatefulWidget {
  @override
  State<Student_DashBoard> createState() => _Student_DashBoardState();
}

class _Student_DashBoardState extends State<Student_DashBoard> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          // statusBarColor: Color(0xff73B1BA),
          statusBarColor: Color(0xffffffff),
          statusBarIconBrightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          body: _getPage(currentPage),
          bottomNavigationBar: FancyBottomNavigation(
            activeIconColor: Colors.black,
            inactiveIconColor: grey,
            circleColor: Color(0xff499CA8),
            barBackgroundColor: primary,
            // textColor: Colors.white,

            tabs: [
              TabData(
                  iconData: Icons.home,
                  title: "Home",
                  onclick: () {
                    final FancyBottomNavigationState fState =
                        bottomNavigationKey.currentState
                            as FancyBottomNavigationState;
                    // fState.setPage(2);
                  }),
              TabData(
                iconData: Icons.event_available_outlined,
                title: "Reminder",
                // onclick: () => Get.to(Student_Course())
              ),
              TabData(
                iconData: Icons.notifications_active_outlined,
                title: "Notifications",
                // onclick: () => Get.to(Student_Course())
              ),
              TabData(iconData: Icons.menu, title: "Basket")
            ],
            initialSelection: 0,
            key: bottomNavigationKey,
            onTabChangedListener: (position) {
              setState(() {
                currentPage = position;
              });
            },
          ),
        ),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Text("This is the home page"),
            Student_Course(),
          ],
        );
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[StudentReminder()],
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[StudentNotification()],
        );
      case 3:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[StudentSettings()],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Page not Found"),
          ],
        );
    }
  }
}
