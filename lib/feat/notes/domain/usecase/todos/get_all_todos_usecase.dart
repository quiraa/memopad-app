import 'package:flutter_floor/core/usecases/usecases.dart';
import 'package:flutter_floor/feat/notes/data/entity/todo_entity.dart';
import 'package:flutter_floor/feat/notes/domain/repository/repository.dart';

class GetAllTodoUseCase implements UseCase<List<TodoEntity>, void> {
  final Repository repository;

  GetAllTodoUseCase(this.repository);

  @override
  Future<List<TodoEntity>> call({void params}) {
    return repository.getAllTodos();
  }
}
