import 'package:flutter/material.dart';
import 'package:nots_app/widgets/note_item.dart';
import 'package:nots_app/widgets/search_icon.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SearchIcon()],
        title: Text(
          'CNotes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlaywriteGBJGuides',
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [NoteItem(), NoteItem()]),
      ),
    );
  }
}
