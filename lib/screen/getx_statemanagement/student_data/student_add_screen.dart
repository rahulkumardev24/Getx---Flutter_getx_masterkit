import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'student_controller.dart';

class StudentAddScreen extends StatelessWidget {
  const StudentAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final StudentController studentController = Get.put(StudentController());
    final nameController = TextEditingController();
    final ageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Student Data screen")),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 300,
                color: Colors.yellow.shade100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(hintText: "Enter name"),
                    ),
                    TextField(
                      controller: ageController,
                      decoration: const InputDecoration(hintText: "Enter age"),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            ageController.text.isNotEmpty) {
                          studentController.addData(
                            name: nameController.text.trim(),
                            age: ageController.text.trim(),
                          );
                          nameController.clear();
                          ageController.clear();
                          Get.back();
                        }
                      },
                      child: const Text(
                        "Add Student",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: const Icon(Icons.add, size: 27, color: Colors.white),
        backgroundColor: Colors.blue,
      ),

      body: Obx(
            () => ListView.builder(
          itemCount: studentController.studentData.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(studentController.studentData[index]['name'] ?? "un"),
              subtitle: Text("Age: ${studentController.studentData[index]["age"] ?? "un"}"),
            );
          },
        ),
      ),
    );
  }
}
