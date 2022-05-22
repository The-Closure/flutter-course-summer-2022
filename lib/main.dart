import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ThemeData _themeData = ThemeData(
//     textTheme: TextTheme(
//       bodyText2: TextStyle(
//         color: Colors.red,
//         backgroundColor: Colors.blue,
//       ),
//     ),
//     floatingActionButtonTheme:
//         FloatingActionButtonThemeData(backgroundColor: Colors.black));

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double deviceInfowidth = MediaQuery.of(context).size.width;
    double deviceInfoheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Transform.rotate(
          angle: 5.0,
          origin: Offset(30.0, 30.0),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
