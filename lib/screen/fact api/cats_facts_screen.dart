import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemanagement/screen/fact%20api/fact_controller.dart';
import 'package:getx_statemanagement/screen/fact%20api/service/api_service.dart';

class CatsFactsScreen extends StatefulWidget {
  const CatsFactsScreen({super.key});

  @override
  State<CatsFactsScreen> createState() => _CatsFactsScreenState();
}

class _CatsFactsScreenState extends State<CatsFactsScreen> {
  final factController = Get.put(FactController());
  @override
  void initState() {
    super.initState();
    factController.fetchRandomFacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cats Facts",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (factController.isLoading.value)
              Center(child: CircularProgressIndicator())
            else
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        factController.fact.value,
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                  ),
                ),
              ),

            SizedBox(height: 21),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  factController.fetchRandomFacts();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Next Fact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
