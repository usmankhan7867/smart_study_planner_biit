import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smart_study_planner_biit/Models/student_model.dart';

class RemoteServise {
  static var client = http.Client();

  static Future<List<Welcome>> fetchStudents() async {
    Get.snackbar("enter", "message");

    var response = await client.get(Uri.parse('localhost:5032/api/Students'));
    // await client
    //     .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      Get.snackbar("sucess", "message");

      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      Get.snackbar("failed", "message");

      return welcomeFromJson(response.body);
    }
  }
}
