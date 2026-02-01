import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_nots_cubit/add_nots.dart';
import 'package:nots_app/widgets/add_note_form.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotsCubit(),
      child: Container(
        child: BlocConsumer<AddNotsCubit, AddNotsState>(
          listener: (context, state) {
            if (state is AddNotsSuccess) {
              Navigator.pop(context);
              final snackbar = SnackBar(
                backgroundColor: const Color.fromARGB(255, 78, 15, 57),
                content: Text(
                  'تم الاضافه بنجاح',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 255, 207, 207),
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }
            if (state is AddNotsFaliuer) {
              print('falier ${state.errorMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotsLoading ? true : false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(child: AddNoteForm()),
              ),
            );
          },
        ),
      ),
    );
  }
}
