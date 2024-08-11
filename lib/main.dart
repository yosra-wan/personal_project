import 'package:flutter/material.dart';
import 'package:verd_ai/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isEcoMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isEcoMode ? ecoTheme : normalTheme,
      home: MyHomePage(
        isEcoMode: isEcoMode,
        toggleEcoMode: toggleEcoMode,
      ),
    );
  }

  void toggleEcoMode() {
    setState(() {
      isEcoMode = !isEcoMode;
    });
  }
}

final ThemeData normalTheme = ThemeData(
  primarySwatch: Colors.blue,
  appBarTheme: AppBarTheme(
    color: Colors.blue,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
  ),
);

final ThemeData ecoTheme = ThemeData(
  primarySwatch: Colors.green,
  appBarTheme: AppBarTheme(
    color: Colors.green,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
  ),
);
