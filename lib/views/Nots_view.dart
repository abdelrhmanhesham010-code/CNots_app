import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_textField.dart';
import 'package:nots_app/widgets/nots_list_view.dart';
import 'package:nots_app/widgets/search_icon.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.only(top: 10),
        child: NotsListView(),
      ),
    );
  }
}

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomTextfield(hint: 'Title'),
              SizedBox(height: 20),
              CustomTextfield(hint: 'content', mazLins: 5),
              SizedBox(height: 30),

              custombottom(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class custombottom extends StatelessWidget {
  const custombottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffBFECFF),
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
