import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/read_nots_cubit/cubit/read_nots_cubit.dart';
import 'package:nots_app/widgets/floating_button_note.dart';
import 'package:nots_app/widgets/nots_list_view.dart';
import 'package:nots_app/widgets/search_icon.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotsCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
              context: context,
              builder: (context) {
                return AddNoteButton();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: [SearchIcon(icon: Icon(Icons.search))],
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
          padding: const EdgeInsets.only(top: 10),
          child: NotsListView(),
        ),
      ),
    );
  }
}
