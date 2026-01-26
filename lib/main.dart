import 'package:flutter/material.dart';
import 'package:nots_app/views/Nots_view.dart';

void main() {
  runApp(const CNotsApp());
}

class CNotsApp extends StatelessWidget {
  const CNotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff1A1A1D),
      ),
      home: NotsView(),
    );
  }
}
