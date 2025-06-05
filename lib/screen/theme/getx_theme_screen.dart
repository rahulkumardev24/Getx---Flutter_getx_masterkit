import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetxThemeScreen extends StatefulWidget {
  const GetxThemeScreen({super.key});

  @override
  State<GetxThemeScreen> createState() => _GetxThemeScreenState();
}

class _GetxThemeScreenState extends State<GetxThemeScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Light & Dark Theme")),
      body: Center(child: Switch(

          value: isDark, onChanged: (value) {
        isDark = !isDark ;
        setState(() {
          Get.changeTheme(ThemeData.dark());

        });
      })),
    );
  }
}
