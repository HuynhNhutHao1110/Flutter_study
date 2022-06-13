import 'package:day2_legomindset_workingwithfigma/config.dart';
import 'package:day2_legomindset_workingwithfigma/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      body: body(),

    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     title: const Text('Challegen02'),
  //     backgroundColor: background,
  //
  //   );
  // }
}
