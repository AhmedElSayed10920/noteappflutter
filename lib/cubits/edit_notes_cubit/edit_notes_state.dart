part of 'edit_notes_cubit.dart';

@immutable
sealed class EditNotesState {}

final class EditNotesInitial extends EditNotesState {}

final class EditNotesLoading extends EditNotesState {}

final class EditNotesSuccess extends EditNotesState {}

final class EditNotesFailure extends EditNotesState {
  final String errMessage;
  EditNotesFailure({required this.errMessage});
}
