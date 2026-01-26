import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: .4),
          borderRadius: BorderRadius.circular(16),
        ),

        child: IconButton(onPressed: () {}, icon: icon, iconSize: 22),
      ),
    );
  }
}
