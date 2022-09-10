import 'dart:developer';
import 'dart:html';
import 'auth/login.dart';
import 'package:flutter/material.dart';
import 'auth/signup.dart';
import 'home/homepage.dart';
import 'create/addnotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          buttonColor: Colors.blue,
          textTheme: TextTheme(
              headline6: TextStyle(fontSize: 20, color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: Log(),
      routes: {
        'login': (context) => Log(),
        'sign' : (context) => Sign(),
        'homepage' : (context) => HomePage(),
        'addnotes' : (context) => AddNotes()
      },
    );
  }
}
