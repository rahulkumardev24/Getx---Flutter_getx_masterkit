import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen/getx_statemanagement/counter%20app/counter_controller.dart';
import 'package:getx_statemanagement/screen/statemanagement/counter%20app%20example/counter_app_controller.dart';
import 'package:http/http.dart';

class CounterAppScreen extends StatelessWidget {
  const CounterAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterAppController counterController = CounterAppController();

    return Scaffold(
      /// aap bar
      appBar: AppBar(title: Text("Counter App Example ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                counterController.counterNumber.toString(),
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              );
            }),

            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// subtract button
                ElevatedButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    "-",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),

                /// add Button  button
                ElevatedButton(
                  onPressed: () {
                    counterController.incrementNumber();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
