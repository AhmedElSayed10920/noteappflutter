import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/simple_bloc_observer.dart';
import 'package:noteapp/views/pages/add_note.dart';
import 'package:noteapp/views/pages/edit_note.dart';
import 'package:noteapp/views/pages/home_page.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        routes: {
          HomePage.id: (context) => const HomePage(),
          AddNote.id: (context) => const AddNote(),
          EditNote.id: (context) => const EditNote(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
