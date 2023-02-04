import 'package:state_notifier/state_notifier.dart';
import 'package:todo_fire_base/repository/todo_repository.dart';
import 'package:todo_fire_base/states/todo_list_page_state.dart';

class TodoListPageViewModel extends StateNotifier<TodoListPageState>
    with LocatorMixin {
  //LocatorMixin:providerが呼ばれたときに初期化処理をするために必要
  TodoListPageViewModel() : super(const TodoListPageState());

  final _repository = TodoRepository();

  @override
  void initState() async {
    /// Streamの場合
    getTodosByStream();

    /// Futureの場合
    // await getTodosByFuture();
    super.initState();
  }

  set setIsLoading(bool v) {
    state = state.copyWith(isLoading: v);
  }

  /// Streamの場合
  void getTodosByStream() {
    _repository.getTodoByStream().listen((todos) {
      state = state.copyWith(toDos: todos);
    });
  }

  /// Futureの場合
  Future<void> getTodosByFuture() async {
    setIsLoading = true;
    await Future.delayed(const Duration(seconds: 3));
    final todos = await _repository.getTodoByFuture();
    state = state.copyWith(toDos: todos);
    setIsLoading = false;
    print(state.toDos);
  }
}
