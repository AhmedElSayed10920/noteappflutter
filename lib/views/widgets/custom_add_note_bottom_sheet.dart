import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
                maxLines: 5,
              ),
              SizedBox(
                height: 35,
              ),
              CustomButton(),
            ],
          ),
        ),
      );
  }
}
