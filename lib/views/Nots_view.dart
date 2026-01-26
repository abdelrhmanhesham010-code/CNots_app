import 'package:flutter/material.dart';
import 'package:nots_app/widgets/nots_list_view.dart';
import 'package:nots_app/widgets/search_icon.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: NotsListView(),
      ),
    );
  }
}
