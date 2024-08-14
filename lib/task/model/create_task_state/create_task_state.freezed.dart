// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTaskState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get selectedDate => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<TodoTask> get todos => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTaskStateCopyWith<CreateTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskStateCopyWith<$Res> {
  factory $CreateTaskStateCopyWith(
          CreateTaskState value, $Res Function(CreateTaskState) then) =
      _$CreateTaskStateCopyWithImpl<$Res, CreateTaskState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      String selectedDate,
      String startTime,
      String endTime,
      String category,
      List<TodoTask> todos,
      bool success});
}

/// @nodoc
class _$CreateTaskStateCopyWithImpl<$Res, $Val extends CreateTaskState>
    implements $CreateTaskStateCopyWith<$Res> {
  _$CreateTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? selectedDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? category = null,
    Object? todos = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskStateImplCopyWith<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  factory _$$CreateTaskStateImplCopyWith(_$CreateTaskStateImpl value,
          $Res Function(_$CreateTaskStateImpl) then) =
      __$$CreateTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      String selectedDate,
      String startTime,
      String endTime,
      String category,
      List<TodoTask> todos,
      bool success});
}

/// @nodoc
class __$$CreateTaskStateImplCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res, _$CreateTaskStateImpl>
    implements _$$CreateTaskStateImplCopyWith<$Res> {
  __$$CreateTaskStateImplCopyWithImpl(
      _$CreateTaskStateImpl _value, $Res Function(_$CreateTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? selectedDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? category = null,
    Object? todos = null,
    Object? success = null,
  }) {
    return _then(_$CreateTaskStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateTaskStateImpl implements _CreateTaskState {
  _$CreateTaskStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      this.selectedDate = '',
      this.startTime = '',
      this.endTime = '',
      this.category = 'Design',
      final List<TodoTask> todos = const [],
      this.success = false})
      : _todos = todos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String selectedDate;
  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey()
  final String category;
  final List<TodoTask> _todos;
  @override
  @JsonKey()
  List<TodoTask> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'CreateTaskState(isLoading: $isLoading, errorMessage: $errorMessage, selectedDate: $selectedDate, startTime: $startTime, endTime: $endTime, category: $category, todos: $todos, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      selectedDate,
      startTime,
      endTime,
      category,
      const DeepCollectionEquality().hash(_todos),
      success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      __$$CreateTaskStateImplCopyWithImpl<_$CreateTaskStateImpl>(
          this, _$identity);
}

abstract class _CreateTaskState implements CreateTaskState {
  factory _CreateTaskState(
      {final bool isLoading,
      final String errorMessage,
      final String selectedDate,
      final String startTime,
      final String endTime,
      final String category,
      final List<TodoTask> todos,
      final bool success}) = _$CreateTaskStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  String get selectedDate;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get category;
  @override
  List<TodoTask> get todos;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
