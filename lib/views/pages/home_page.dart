import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: () {},
        shape:const CircleBorder(),
        child: const Icon(Icons.add),
      ), 
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: NotesViewBody(),
        ),
      ),
    );
  }
}
