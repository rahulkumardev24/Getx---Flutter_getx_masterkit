import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_statemanagement/screen/bottom%20sheet/getx_bottom_sheet_screen.dart';
import 'package:getx_statemanagement/screen/dialog/getx_dialog_screen.dart';
import 'package:getx_statemanagement/screen/getx%20navigation/first_screen.dart';
import 'package:getx_statemanagement/screen/getx_snackbar_screen.dart';
import 'package:getx_statemanagement/screen/home_screem.dart';
import 'package:getx_statemanagement/screen/theme/getx_theme_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: GetxThemeScreen(),
    );
  }
}
