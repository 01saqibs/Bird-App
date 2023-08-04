

import 'package:hive_flutter/adapters.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  
  @HiveField(0)
  String tittle;
  
  @HiveField(1)
  String desc;
  
  NotesModel ({required this.tittle,required this.desc});
}