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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteBody()));
          },
        ),
      ),
    );
  }
}
