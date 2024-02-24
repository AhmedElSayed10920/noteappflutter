import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
  static String id = 'EditNoteId';
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}
