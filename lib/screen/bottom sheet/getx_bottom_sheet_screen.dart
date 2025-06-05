import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxBottomSheetScreen extends StatelessWidget {
  const GetxBottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 260,
          child: ElevatedButton(
            /// show Bottom sheet with with getx
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Icon(Icons.camera_alt, size: 50),
                        title: Text(
                          "Camera",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 27,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.image, size: 50),
                        title: Text(
                          "Gallery",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 27,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.close, size: 50),
                        onTap: () {
                          Get.back();
                        },
                        title: Text(
                          "Close",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 27,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Show bottom sheet", style: TextStyle(fontSize: 22)),
            ),
          ),
        ),
      ),
    );
  }
}
