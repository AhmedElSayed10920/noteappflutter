import 'package:flutter/material.dart';
import 'package:noteapp/views/pages/add_note.dart';
import 'package:noteapp/views/widgets/custom_add_note_bottom_sheet.dart';
import 'package:noteapp/views/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'homePageId';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).pushNamed(AddNote.id);
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (
                context,
              ) {
                return const CustomAddNoteBottomSheet();
              });
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: NotesViewBody(),
        ),
      ),
    );
  }
}
