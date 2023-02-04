// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoListPageState _$$_TodoListPageStateFromJson(Map<String, dynamic> json) =>
    _$_TodoListPageState(
      toDos: (json['toDos'] as List<dynamic>?)
              ?.map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TodoModel>[],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoListPageStateToJson(
        _$_TodoListPageState instance) =>
    <String, dynamic>{
      'toDos': instance.toDos,
      'isLoading': instance.isLoading,
    };
