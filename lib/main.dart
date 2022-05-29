import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:themeandmedia/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 ThemeData _themeData = ThemeData();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _themeData,
      home: BlocProvider(
        create: (context) => ThemeBloc(),
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<ThemeBloc, ThemeState>(
          listener: (context, state) {
            if (state is lightmode) {
              showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 2, minute: 20));
            } else {
              showDatePicker(
                  context: context,
                  initialDate: DateTime(2010),
                  firstDate: DateTime(1999),
                  lastDate: DateTime(2300));
            }
          },
          builder: (context, state) {
            if (state is Darkmode) {
              return Container(
                child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<ThemeBloc>().add(lightness());
                        },
                        child: Text('Change mode'))),
              );
            } else {
              return Container(
                child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<ThemeBloc>().add(darkness());
                        },
                        child: Text('Change mode'))),
              );
            }
          },
        ));
  }
}
