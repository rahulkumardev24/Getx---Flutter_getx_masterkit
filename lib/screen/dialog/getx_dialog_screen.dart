import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxDialogScreen extends StatefulWidget {
  const GetxDialogScreen({super.key});

  @override
  State<GetxDialogScreen> createState() => _GetxDialogScreenState();
}

class _GetxDialogScreenState extends State<GetxDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 260,
          child: ElevatedButton(
            /// show Dialog with with getx
            onPressed: () {
              Get.defaultDialog(
                title: "Are you Sure?",
                middleText: "Do you really want to delete this item ?",
                cancel: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
                confirm: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ),
                backgroundColor: Colors.lightBlue.shade50,
                titleStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                middleTextStyle: TextStyle(fontSize: 16),
                radius: 11,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Dialog", style: TextStyle(fontSize: 27)),
            ),
          ),
        ),
      ),
    );
  }
}
