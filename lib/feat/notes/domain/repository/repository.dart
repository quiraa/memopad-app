import 'package:flutter_floor/feat/notes/data/entity/note_entity.dart';
import 'package:flutter_floor/feat/notes/data/entity/todo_entity.dart';

abstract class Repository {
  Future<List<NoteEntity>> getAllNotesOrderByDate();

  Future<void> insertNote(NoteEntity note);

  Future<void> deleteSingleNote(NoteEntity note);

  Future<void> updateNote(NoteEntity note);

  Future<void> deleteAllNote();

  Future<List<NoteEntity>> searchNotes(String query);

  Future<List<TodoEntity>> getAllTodos();

  Future<void> insertTodo(TodoEntity todo);

  Future<void> deleteAllTodo();

  Future<void> updateTodo(TodoEntity todo);

  Future<void> deleteSingleTodo(TodoEntity todo);
}
