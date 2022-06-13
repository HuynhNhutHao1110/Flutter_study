import 'package:flutter/material.dart';
import 'package:day2_legomindset_workingwithfigma/screens/home/HomePage.dart';
import 'package:day2_legomindset_workingwithfigma/config.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Zinggoo Social UI Kit',
      theme: ThemeData(
        primaryColor: background,
        scaffoldBackgroundColor: background,
      ),
      home: MyHomePage(),
    );
  }
}


