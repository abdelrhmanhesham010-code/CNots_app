import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: const CircleAvatar(radius: 34, backgroundColor: Colors.blueAccent),
    );
  }
}

class ColorListBulider extends StatelessWidget {
  const ColorListBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return ColorItem();
        },
      ),
    );
  }
}
