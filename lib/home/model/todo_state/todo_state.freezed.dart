// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoState {
  List<TodoTask> get todos => throw _privateConstructorUsedError;
  List<TodoTask> get allTodos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  double get todayTodoProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {List<TodoTask> todos,
      List<TodoTask> allTodos,
      bool isLoading,
      String errorMessage,
      bool success,
      double progress,
      double todayTodoProgress});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? allTodos = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? success = null,
    Object? progress = null,
    Object? todayTodoProgress = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      allTodos: null == allTodos
          ? _value.allTodos
          : allTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      todayTodoProgress: null == todayTodoProgress
          ? _value.todayTodoProgress
          : todayTodoProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TodoTask> todos,
      List<TodoTask> allTodos,
      bool isLoading,
      String errorMessage,
      bool success,
      double progress,
      double todayTodoProgress});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? allTodos = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? success = null,
    Object? progress = null,
    Object? todayTodoProgress = null,
  }) {
    return _then(_$TodoStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      allTodos: null == allTodos
          ? _value._allTodos
          : allTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      todayTodoProgress: null == todayTodoProgress
          ? _value.todayTodoProgress
          : todayTodoProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  _$TodoStateImpl(
      {final List<TodoTask> todos = const [],
      final List<TodoTask> allTodos = const [],
      this.isLoading = false,
      this.errorMessage = '',
      this.success = false,
      this.progress = 0.0,
      this.todayTodoProgress = 0.0})
      : _todos = todos,
        _allTodos = allTodos;

  final List<TodoTask> _todos;
  @override
  @JsonKey()
  List<TodoTask> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  final List<TodoTask> _allTodos;
  @override
  @JsonKey()
  List<TodoTask> get allTodos {
    if (_allTodos is EqualUnmodifiableListView) return _allTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTodos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final double progress;
  @override
  @JsonKey()
  final double todayTodoProgress;

  @override
  String toString() {
    return 'TodoState(todos: $todos, allTodos: $allTodos, isLoading: $isLoading, errorMessage: $errorMessage, success: $success, progress: $progress, todayTodoProgress: $todayTodoProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality().equals(other._allTodos, _allTodos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.todayTodoProgress, todayTodoProgress) ||
                other.todayTodoProgress == todayTodoProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(_allTodos),
      isLoading,
      errorMessage,
      success,
      progress,
      todayTodoProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  factory _TodoState(
      {final List<TodoTask> todos,
      final List<TodoTask> allTodos,
      final bool isLoading,
      final String errorMessage,
      final bool success,
      final double progress,
      final double todayTodoProgress}) = _$TodoStateImpl;

  @override
  List<TodoTask> get todos;
  @override
  List<TodoTask> get allTodos;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  bool get success;
  @override
  double get progress;
  @override
  double get todayTodoProgress;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
