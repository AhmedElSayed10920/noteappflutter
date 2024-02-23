import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/views/pages/add_note.dart';
import 'package:noteapp/views/pages/edit_note.dart';
import 'package:noteapp/views/pages/home_page.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      routes: {
        HomePage.id: (context) => const HomePage(),
        AddNote.id: (context) => const AddNote(),
        EditNote.id : (context) => const EditNote(),
      },
      initialRoute:HomePage.id,
    );
  }
}
