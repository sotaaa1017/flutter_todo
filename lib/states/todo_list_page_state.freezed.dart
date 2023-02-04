// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoListPageState _$TodoListPageStateFromJson(Map<String, dynamic> json) {
  return _TodoListPageState.fromJson(json);
}

/// @nodoc
mixin _$TodoListPageState {
  List<TodoModel> get toDos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoListPageStateCopyWith<TodoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListPageStateCopyWith<$Res> {
  factory $TodoListPageStateCopyWith(
          TodoListPageState value, $Res Function(TodoListPageState) then) =
      _$TodoListPageStateCopyWithImpl<$Res, TodoListPageState>;
  @useResult
  $Res call({List<TodoModel> toDos, bool isLoading});
}

/// @nodoc
class _$TodoListPageStateCopyWithImpl<$Res, $Val extends TodoListPageState>
    implements $TodoListPageStateCopyWith<$Res> {
  _$TodoListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDos = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      toDos: null == toDos
          ? _value.toDos
          : toDos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoListPageStateCopyWith<$Res>
    implements $TodoListPageStateCopyWith<$Res> {
  factory _$$_TodoListPageStateCopyWith(_$_TodoListPageState value,
          $Res Function(_$_TodoListPageState) then) =
      __$$_TodoListPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> toDos, bool isLoading});
}

/// @nodoc
class __$$_TodoListPageStateCopyWithImpl<$Res>
    extends _$TodoListPageStateCopyWithImpl<$Res, _$_TodoListPageState>
    implements _$$_TodoListPageStateCopyWith<$Res> {
  __$$_TodoListPageStateCopyWithImpl(
      _$_TodoListPageState _value, $Res Function(_$_TodoListPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDos = null,
    Object? isLoading = null,
  }) {
    return _then(_$_TodoListPageState(
      toDos: null == toDos
          ? _value._toDos
          : toDos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoListPageState
    with DiagnosticableTreeMixin
    implements _TodoListPageState {
  const _$_TodoListPageState(
      {final List<TodoModel> toDos = const <TodoModel>[],
      this.isLoading = false})
      : _toDos = toDos;

  factory _$_TodoListPageState.fromJson(Map<String, dynamic> json) =>
      _$$_TodoListPageStateFromJson(json);

  final List<TodoModel> _toDos;
  @override
  @JsonKey()
  List<TodoModel> get toDos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDos);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListPageState(toDos: $toDos, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListPageState'))
      ..add(DiagnosticsProperty('toDos', toDos))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoListPageState &&
            const DeepCollectionEquality().equals(other._toDos, _toDos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_toDos), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoListPageStateCopyWith<_$_TodoListPageState> get copyWith =>
      __$$_TodoListPageStateCopyWithImpl<_$_TodoListPageState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoListPageStateToJson(
      this,
    );
  }
}

abstract class _TodoListPageState implements TodoListPageState {
  const factory _TodoListPageState(
      {final List<TodoModel> toDos,
      final bool isLoading}) = _$_TodoListPageState;

  factory _TodoListPageState.fromJson(Map<String, dynamic> json) =
      _$_TodoListPageState.fromJson;

  @override
  List<TodoModel> get toDos;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TodoListPageStateCopyWith<_$_TodoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
