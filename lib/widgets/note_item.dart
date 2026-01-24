import 'package:flutter/material.dart';

Padding NoteItem() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Container(
      padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),

      // width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Micor tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontFamily: 'Heebo',
                ),
              ),
            ),
            subtitle: Text(
              'Build your career with abdelrhman hesham',
              style: TextStyle(
                color: Colors.black.withValues(alpha: .6),
                fontFamily: 'Heebo',
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              iconSize: 26,
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16),
            child: Text(
              'Sat, Jan 24',
              style: TextStyle(color: Colors.black.withValues(alpha: .5)),
            ),
          ),
        ],
      ),
    ),
  );
}
