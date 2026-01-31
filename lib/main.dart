import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/constant/constant.dart';
import 'package:nots_app/cubits/add_nots.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/slimple_bloc_observer.dart';
import 'package:nots_app/views/Nots_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModeAdapter());
  if (!Hive.isBoxOpen(kPnoteBox)) {
    await Hive.openBox<NoteModel>(kPnoteBox);
  }
  Bloc.observer = SlimpleBlocObserver();

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
