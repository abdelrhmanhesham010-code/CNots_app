import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteMode  extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final Color color;
  NoteMode(this.title, this.subTitle, this.date, this.color);
}
