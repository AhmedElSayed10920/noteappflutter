import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/add-notes-widgets/note_color_picker.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
   late int colorIndex;
   @override
  void initState() {
    colorIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  colorIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: CustomColorPicker(
                  color: kColors[index],
                  colorPicked: colorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}