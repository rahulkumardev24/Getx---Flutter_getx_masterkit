import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Center(
        child: ElevatedButton(
          /// navigate to second screen
          onPressed: () {
            /// navigator

            // Navigator.pop(context);

            /// getx
            Get.back();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            "Back to first screen ",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
