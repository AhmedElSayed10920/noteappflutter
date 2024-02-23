import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
            ),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 10,),
            CustomTextField(
              hintText: 'Content',
              maxLines: 10,
            )
          ],
        ),
      ),
    );
  }
}
