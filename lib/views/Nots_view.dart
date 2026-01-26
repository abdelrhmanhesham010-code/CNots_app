import 'package:flutter/material.dart';

import 'package:nots_app/widgets/nots_list_view.dart';
import 'package:nots_app/widgets/search_icon.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SearchIcon()],
        backgroundColor: Color(0xff6A1E55),
        title: const Text(
          'CNotes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlaywriteGBJGuides',
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 5),
        child: NotsListView(),
      ),
    );
  }
}
