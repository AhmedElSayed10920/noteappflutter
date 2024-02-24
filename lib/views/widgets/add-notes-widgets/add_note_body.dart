import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/add-notes-widgets/note_color_picker.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_button.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_text_field.dart';

class AddNoteBody extends StatefulWidget {
  const AddNoteBody({
    super.key,
  });

  @override
  State<AddNoteBody> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNoteBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 6,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomColorPickerListView(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNotesStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime date = DateTime.now();
                    var formattedDate = DateFormat('MMM dd,yyy').format(date);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedDate,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}


