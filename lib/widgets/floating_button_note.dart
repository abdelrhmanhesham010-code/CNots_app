import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_nots.dart';
import 'package:nots_app/widgets/add_note_form.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNotsCubit, AddNotsState>(
            listener: (context, state) {
              if (state is AddNotsSuccess) {
                Navigator.pop(context);
                // SnackBar(
                //   backgroundColor: Colors.grey,
                //   content: Text(
                //     'تم الاضافه بنجاح',
                //     style: TextStyle(fontSize: 16, color: Colors.red),
                //   ),
                // );
              }
              if (state is AddNotsFaliuer) {
                print('falier ${state.errorMessage}');
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNotsLoading ? true : false,
                child: AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
