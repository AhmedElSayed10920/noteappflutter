import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id = 'EditNoteId';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBody(),
    );
  }
}
