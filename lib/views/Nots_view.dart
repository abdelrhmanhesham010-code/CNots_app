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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffDA4167),
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            context: context,
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: AddNoteButton(),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        actions: [SearchIcon(icon: Icon(Icons.search))],
        backgroundColor: Color(0xffDA4167),
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
        child: BlocConsumer<ReadNotsCubit, ReadNotsState>(
          listener: (context, state) => ReadNotsCubit(),
          builder: (context, state) => NotsListView(),
        ),
      ),
    );
  }
}
