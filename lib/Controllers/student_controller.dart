import 'package:get/get.dart';
import 'package:smart_study_planner_biit/Models/student_model.dart';
import 'package:smart_study_planner_biit/Services/remote_servise.dart';

class StudentController extends GetxController {
  var students = List<Welcome>.empty(growable: true).obs;
  void fetchStudents() async {
    var studentss = await RemoteServise.fetchStudents();
    if (studentss != null) {
      students.value = studentss;
      Get.snackbar("title", "message");
    }
  }
}
