import 'package:get/get.dart';

import 'notes_model.dart';

class NotesController extends GetxController {
  var notes = <NotesModel>[].obs;
  int _id = 1;

  /// add notes function
  void addNotes({required String message}) {
    notes.add(NotesModel(id: _id++, message: message));
  }

  /// delete
  void deleteNotes(int id) {
    notes.removeWhere((note) => note.id == id);
  }
}
