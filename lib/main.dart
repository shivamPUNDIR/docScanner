import 'dart:convert';

import 'package:docScanner/Model/documentModel.dart';
import 'package:docScanner/Providers/documentProvider.dart';
import 'package:docScanner/showImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: DocumentProvider(),
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: ThemeData.dark().canvasColor),
            textSelectionColor: Colors.blueGrey,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: ThemeData.dark().canvasColor)),
        home: Home(),
      ),
    );
  }
}
