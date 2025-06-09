import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen/getx_statemanagement/counter%20app/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter_app")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// show counter number
            Obx(() {
              return Text(
                counterController.counterNumber.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100),
              );
            }),

            SizedBox(height: 21),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterController.incrementCounter();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("+", style: TextStyle(fontSize: 80)),
                ),

                ElevatedButton(
                  onPressed: () {
                    counterController.decrementCounter();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("-", style: TextStyle(fontSize: 80)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
