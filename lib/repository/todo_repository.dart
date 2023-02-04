import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_fire_base/model/todo_model.dart';

class TodoRepository {
  Future<void> createTodo(
    Map<String, dynamic> json,
  ) async {
    final _db = FirebaseFirestore.instance;
    final collectionRef = _db.collection('todos');
    final docId = collectionRef.doc().id;
    await collectionRef.doc(docId).set(
          json,
          SetOptions(merge: true),
        );
  }

  /// Streamの場合
  Stream<List<TodoModel>> getTodoByStream() {
    final _db = FirebaseFirestore.instance;
    final dataList = _db.collection('todos').snapshots();
    final res = dataList.map((event) =>
        event.docs.map((e) => TodoModel.fromJson(e.data())).toList());
    return res;
  }

  /// Futureの場合
  Future<List<TodoModel>> getTodoByFuture() async {
    final _db = FirebaseFirestore.instance;

    ///collection().get 一覧取得（配列で帰ってくる）
    ///collection().doc().get 一件取得
    final dataList = await _db.collection('todos').get();

    /// QuerySnapshot: {
    ///   metadata: {
    ///     メタデータ
    ///   }
    ///   docs: [
    ///     ここにfirebaseから取得したデータがある
    ///   ]
    /// }
    final docs = dataList.docs; //

    ///配列に対して繰り返しの処理
    ///配列の中身を処理して配列に戻す
    /// e.data : json
    /// TodoModel.fromJson : flutterで使用する型に変換
    final result = docs.map((e) => TodoModel.fromJson(e.data())).toList();
    return result;
  }
}
