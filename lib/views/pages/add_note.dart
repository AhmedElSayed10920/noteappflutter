import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_button.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  static String id = 'AddNoteId';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:16,vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'Title',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Content',
                  maxLines: 20,
                ),
                SizedBox(
                  height: 46,
                ),
                CustomButton(),
                SizedBox(
                  height: 18,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


