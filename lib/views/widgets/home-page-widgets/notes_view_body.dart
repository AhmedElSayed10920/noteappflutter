import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/home-page-widgets/note_item_list.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }
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
