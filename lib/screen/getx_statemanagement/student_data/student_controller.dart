import 'package:get/get.dart';

class StudentController extends GetxController {
  RxList<Map<String, dynamic>> studentData = <Map<String, dynamic>>[].obs;

  addData({required String name, required String age}) {
    studentData.add({"name": name, "age": age});
  }                     
}
