import 'package:flutter/material.dart';
import 'package:nots_app/widgets/note_item.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return NoteItem();
      },
    );
  }
}
