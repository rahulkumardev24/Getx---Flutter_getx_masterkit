import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemanagement/screen/getx%20navigation/second_screen.dart';
import 'package:getx_statemanagement/screen/getx%20navigation/third_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              /// navigate to second screen
              onPressed: () {
                /// navigator
                // Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondScreen()));

                /// getx
                Get.to(SecondScreen());
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                "Move To Second Screen",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),

            ElevatedButton(
              /// navigate to second screen
              onPressed: () {
                /// navigator
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> ThirdScreen()));

                /// getx
                Get.off(ThirdScreen());
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                "Move To third screen",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
