import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';
part 'add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(AddNotesInitial());

  Color color = const Color(0xff1BE7FF);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotesFailure(errMessage: e.toString()));
    }
  }
}
