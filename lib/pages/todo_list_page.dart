import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:todo_fire_base/states/todo_list_page_state.dart';
import 'package:todo_fire_base/view_models/todo_list_page_view_model.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TodoListPageViewModel, TodoListPageState>(
          create: (_) => TodoListPageViewModel(),
          lazy: false,
        )
      ],
      child: _TodoListPage(),
    );
  }
}

class _TodoListPage extends StatelessWidget {
  const _TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoListPageState>().toDos;
    final isLoading = context.watch<TodoListPageState>().isLoading;
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: todos.length,
      itemBuilder: (_, index) {
        final todo = todos[index];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
              title: Text(
            todo.todoName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )),
        );
      },
    );
  }
}
