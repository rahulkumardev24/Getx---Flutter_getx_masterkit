import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxSnackbarScreen extends StatelessWidget {
  const GetxSnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: SizedBox(
          width: 260,
          child: ElevatedButton(
            /// show snack bar with the help og getx
            onPressed: () {
              Get.snackbar(
                "Login Successful",
                "Welcome back, Rahul!",
                snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.white,
                // showProgressIndicator: true ,
                backgroundColor: Colors.blue,
                icon: Icon(Icons.person, color: Colors.white, size: 32),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Snack bar", style: TextStyle(fontSize: 27)),
            ),
          ),
        ),
      ),
    );
  }
}
