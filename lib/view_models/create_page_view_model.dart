import 'package:state_notifier/state_notifier.dart';
import 'package:todo_fire_base/model/todo_model.dart';
import 'package:todo_fire_base/repository/todo_repository.dart';

import 'package:todo_fire_base/states/create_page_state.dart';

class CreatePageViewModel extends StateNotifier<CreatePageState> {
  CreatePageViewModel() : super(const CreatePageState());

  final _repository = TodoRepository();

  set setText(String v) {
    state = state.copyWith(text: v);
  }

  Future<void> finish() async {
    if (state.text.isNotEmpty) {
      final json = TodoModel();
      final data = json.copyWith(todoName: state.text);
      await _repository.createTodo(data.toJson());
    }
  }
}
