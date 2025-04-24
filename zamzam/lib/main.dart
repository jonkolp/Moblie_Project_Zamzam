import 'package:flutter/material.dart';
import 'pages/main_page.dart'; // this is new!

void main() {
  runApp(ZamZamApp());
}

class ZamZamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.black, // sets both title and icon color
          elevation: 0,
          centerTitle: false,
        ),
      ),
      home: MainPage(), // this opens MainPage first
    );
  }
}
