import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hello_word/src/pages/count_page.dart';
// import 'package:flutter_hello_word/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.dark,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      // home: Center(child: HomePage()),
      home: Center(child: CountPage()),
    );
  }
}
