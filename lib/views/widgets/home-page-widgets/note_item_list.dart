import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/home-page-widgets/custom_note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical:4),
        child: NoteItem(),
      );
    });
  }
}