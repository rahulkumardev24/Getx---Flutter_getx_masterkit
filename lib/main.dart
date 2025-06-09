import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen/fact%20api/cats_facts_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatsFactsScreen(),
    );
  }
}
