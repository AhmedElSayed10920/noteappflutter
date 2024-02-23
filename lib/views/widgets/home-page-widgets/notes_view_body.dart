import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/home-page-widgets/note_item_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Notes',
          icon: Icons.search,
        ),
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
