import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/edit_note_color.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                onTap: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = content ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  Navigator.pop(context);
                },
                title: 'Edit Notes',
                icon: Icons.check,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'Title',
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (value) {
                  content = value;
                },
                hintText: 'Content',
                maxLines: 10,
              ),
              const SizedBox(
                height: 16,
              ),
              EditColorListView(
                note: widget.note,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
