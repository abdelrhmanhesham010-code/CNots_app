import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_nots_cubit/add_nots.dart';
import 'package:intl/intl.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/widgets/custom_bottom.dart';
import 'package:nots_app/widgets/custom_textField.dart';
import 'package:nots_app/widgets/pick_your_fav_color.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> globalKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  // void initState() {
  //   BlocProvider.of<ReadNotsCubit>(context).fetcAllhNote();
  //   super.initState();
  // }
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextfield(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextfield(
            hint: 'content',
            mazLins: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 30),
          ColorListBulider(),

          SizedBox(height: 30),

          BlocBuilder<AddNotsCubit, AddNotsState>(
            builder: (context, state) {
              return custombottom(
                isLoading: state is AddNotsLoading ? true : false,
                onTap: () async {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    globalKey.currentState!.reset();
                    autovalidateMode = AutovalidateMode.disabled;
                    setState(() {});
                    var currentDate = DateTime.now();
                    var formateCurrentDate = DateFormat.yMd().format(
                      currentDate,
                    );
                    NoteModel noteModel = NoteModel(
                      title!,
                      subTitle!,
                      formateCurrentDate,
                      Colors.blue.toARGB32(),
                    );
                    BlocProvider.of<AddNotsCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

