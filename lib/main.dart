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
      body: Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.height > 400)
            return Scaffold(
              body: Center(
                  child: Row(
                children: [
                  Column(
                    children: [
                      Text('data'),
                      TextButton(
                        onPressed: () {},
                        child: Text('search here'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text('press here'),
                      )
                    ],
                  ),
                  Column(
                    children: [],
                  ),
                ],
              )),
            );
          else {
            return Scaffold(
              body: Center(
                child: Container(),
              ),
              drawer: Column(
                children: [
                  Text('data'),
                  TextButton(
                    onPressed: () {},
                    child: Text('search here'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('press here'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
