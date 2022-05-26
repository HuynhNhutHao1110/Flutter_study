import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.greenAccent,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Container(color: Colors.grey)),
                                        Expanded(
                                            child: Container(color: Colors.orange)),
                                        Expanded(
                                            child: Container(color: Colors.blue)),
                                        Expanded(
                                            child: Container(color: Colors.pink)),
                                      ],
                                    )),
                                Expanded(
                                    child: Column(
                                      children: [
                                        const Expanded(flex: 3, child: SizedBox()),
                                        Expanded(
                                            child: Container(color: Colors.green))
                                      ],
                                    )),
                                Expanded(
                                    child: Column(
                                      children: [
                                        const Expanded(flex: 3, child: SizedBox()),
                                        Expanded(
                                            child: Container(color: Colors.yellow))
                                      ],
                                    )),
                              ],
                            ),
                          )),
                      Expanded(flex: 2, child: Container(color: Colors.black)),
                      Expanded(flex: 2, child: Container(color: Colors.yellow)),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2, child: Container(color: Colors.pink)),
                const SizedBox(width: 10),
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
            Positioned(
              bottom: constraints.maxHeight / 3,
              left: constraints.maxWidth / 6,
              child: Container(
                  width: constraints.maxWidth / 4,
                  height: constraints.maxHeight / 6,
                  color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.play_arrow),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
