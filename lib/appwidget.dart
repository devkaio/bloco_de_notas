import 'package:bloco_de_notas/src/features/home/home_page.dart';
import 'package:bloco_de_notas/src/features/home/notes_page.dart';
import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Notes',
        initialRoute: SplashPage.id,
        routes: {
          SplashPage.id: (context) => SplashPage(),
          HomePage.id: (context) => HomePage(),
          NewNotePage.id: (context) => NewNotePage(),
          NotesPage.id: (context) => NotesPage(),
        });
  }
}
