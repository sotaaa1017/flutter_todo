import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_fire_base/model/todo_model.dart';
part 'todo_list_page_state.freezed.dart';
part 'todo_list_page_state.g.dart';

@freezed
class TodoListPageState with _$TodoListPageState {
  const factory TodoListPageState({
    @Default(<TodoModel>[]) List<TodoModel> toDos,
    @Default(false) bool isLoading,
  }) = _TodoListPageState;

  factory TodoListPageState.fromJson(Map<String, dynamic> json) =>
      _$TodoListPageStateFromJson(json);
}
