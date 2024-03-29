import 'package:floor/floor.dart';
import 'package:flutter_floor/feat/notes/data/entity/todo_entity.dart';

@dao
abstract class TodoDao {
  @Query('SELECT * FROM todos ORDER BY isImportant DESC, task')
  Future<List<TodoEntity>> getTodosOrderByImportantAndTask();

  @Query('DELETE FROM todos')
  Future<void> deleteAllTodos();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTodo(TodoEntity todos);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateTodo(TodoEntity todo);

  @delete
  Future<void> deleteTodo(TodoEntity todos);
}
