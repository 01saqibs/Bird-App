
import 'package:hive/hive.dart';
import 'package:untitled/model/notes_model.dart';

class Boxes {

  static Box<NotesModel> getData() => Hive.box<NotesModel>('notes');
}