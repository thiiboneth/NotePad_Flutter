import 'package:flutter/cupertino.dart';
import 'Note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = new List<Note>();

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('Primeira Nota', 'Primeira Descrição');
  }

  void addNewNote(String title, String descripition) {
    Note note = Note(title, descripition);
    _notes.add(note);
    notifyListeners();
  }
}
