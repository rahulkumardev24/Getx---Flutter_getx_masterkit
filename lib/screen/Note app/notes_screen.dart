import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screen/Note%20app/notes_controller.dart';

class NotesScreen extends StatelessWidget {
  final messageController = TextEditingController();
  final NotesController notesCon = Get.put(NotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// floating action button
      /// notes add button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.bottomSheet(
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(21),
                  topLeft: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Add New Notes",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: messageController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Write notes Here ",
                        fillColor: Colors.blue.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 11),

                  /// notes add or cancel button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// cancel button
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(width: 1, color: Colors.red),
                          ),
                        ),

                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 21, color: Colors.red),
                        ),
                      ),

                      /// add button
                      ElevatedButton(
                        onPressed: () {
                          notesCon.addNotes(
                            message: messageController.text.trim().toString(),
                          );
                          Get.back();
                          messageController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),

                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        label: Text(
          "Add Notes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.white,
          ),
        ),

        icon: Icon(Icons.add, size: 27, color: Colors.white),
        elevation: 1,
        backgroundColor: Colors.blue,
      ),

      /// app
      appBar: AppBar(
        title: Text(
          "Notes App ",
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      backgroundColor: Colors.white,

      /// body
      body: Obx(() {
        return ListView.builder(
          itemCount: notesCon.notes.length,
          itemBuilder: (context, index) {
            final myNotes = notesCon.notes[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4,
                  ),
                  child: Row(
                    children: [
                      /// index
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              myNotes.id.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Text(
                          myNotes.message,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          notesCon.deleteNotes(myNotes.id);
                        },
                        child: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
