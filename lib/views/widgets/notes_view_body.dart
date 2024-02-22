import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/note_item_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: NoteItemList(),
        ),
      ],
    );
  }
}