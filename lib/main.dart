import 'package:flutter/material.dart';
import 'package:quizeapplication/Screens/StartQuize.dart';
import 'package:quizeapplication/Screens/QuizePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: "rabar_21"),
      initialRoute: "/",
      routes: {
        "/": (context) => QuizePage(),
        "/QuizStart": (context) => QuizStart()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
