import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_notes_state.dart';

class EditNotesCubit extends Cubit<EditNotesState> {
  EditNotesCubit() : super(EditNotesInitial());
}
