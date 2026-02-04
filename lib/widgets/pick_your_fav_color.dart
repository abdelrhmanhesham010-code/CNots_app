import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_nots_cubit/add_nots.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.only(left: 4),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34,
              child: CircleAvatar(radius: 32, backgroundColor: color),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 4),
            child: CircleAvatar(radius: 32, backgroundColor: color),
          );
  }
}

class ColorListBulider extends StatefulWidget {
  const ColorListBulider({super.key});

  @override
  State<ColorListBulider> createState() => _ColorListBuliderState();
}

class _ColorListBuliderState extends State<ColorListBulider> {
  int colorIndexColor = 0;

  List<Color> colors = const [
    Color(0xff0E0004),
    Color(0xffF03A47),
    Color(0xffE8998D),
    Color(0xff55917F),
    Color(0xff5E4C5A),
    Color(0xffCBEF43),
    Color(0xff000022),
    Color(0xffE28413),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,

        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              colorIndexColor = index;
              context.read<AddNotsCubit>().color=colors[index];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: colorIndexColor == index,
            ),
          );
        },
      ),
    );
  }
}
