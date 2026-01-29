import 'package:flutter/material.dart';
import 'package:nots_app/constant/constant.dart';
import 'package:nots_app/views/Nots_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await  Hive.openBox(kPnoteBox);

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
