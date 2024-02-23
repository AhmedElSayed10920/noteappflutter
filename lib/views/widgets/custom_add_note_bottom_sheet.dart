import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:noteapp/views/widgets/add_note_body.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNotesStates>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNotesFailure) {
            print('Failer ${state.errMessage}');
          }
        },
        
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(child: AddNoteBody()),
            ),
          );
        },
      ),
    );
  }
}
