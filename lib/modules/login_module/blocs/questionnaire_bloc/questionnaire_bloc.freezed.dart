// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionnaire,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        selectItem,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestionnaire,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionnaire,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionnaire value) fetchQuestionnaire,
    required TResult Function(_Select value) selectItem,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult? Function(_Select value)? selectItem,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult Function(_Select value)? selectItem,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEventCopyWith<$Res> {
  factory $QuestionnaireEventCopyWith(
          QuestionnaireEvent value, $Res Function(QuestionnaireEvent) then) =
      _$QuestionnaireEventCopyWithImpl<$Res, QuestionnaireEvent>;
}

/// @nodoc
class _$QuestionnaireEventCopyWithImpl<$Res, $Val extends QuestionnaireEvent>
    implements $QuestionnaireEventCopyWith<$Res> {
  _$QuestionnaireEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchQuestionnaireImplCopyWith<$Res> {
  factory _$$FetchQuestionnaireImplCopyWith(_$FetchQuestionnaireImpl value,
          $Res Function(_$FetchQuestionnaireImpl) then) =
      __$$FetchQuestionnaireImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuestionnaireImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$FetchQuestionnaireImpl>
    implements _$$FetchQuestionnaireImplCopyWith<$Res> {
  __$$FetchQuestionnaireImplCopyWithImpl(_$FetchQuestionnaireImpl _value,
      $Res Function(_$FetchQuestionnaireImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchQuestionnaireImpl implements _FetchQuestionnaire {
  const _$FetchQuestionnaireImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.fetchQuestionnaire()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchQuestionnaireImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionnaire,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        selectItem,
    required TResult Function() started,
  }) {
    return fetchQuestionnaire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestionnaire,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult? Function()? started,
  }) {
    return fetchQuestionnaire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionnaire,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchQuestionnaire != null) {
      return fetchQuestionnaire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionnaire value) fetchQuestionnaire,
    required TResult Function(_Select value) selectItem,
    required TResult Function(_Started value) started,
  }) {
    return fetchQuestionnaire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult? Function(_Select value)? selectItem,
    TResult? Function(_Started value)? started,
  }) {
    return fetchQuestionnaire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult Function(_Select value)? selectItem,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchQuestionnaire != null) {
      return fetchQuestionnaire(this);
    }
    return orElse();
  }
}

abstract class _FetchQuestionnaire implements QuestionnaireEvent {
  const factory _FetchQuestionnaire() = _$FetchQuestionnaireImpl;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {QuestionnaireModel questionnaireModel,
      List<AnswerModel> answerList,
      int selectedIndex});

  $QuestionnaireModelCopyWith<$Res> get questionnaireModel;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaireModel = null,
    Object? answerList = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$SelectImpl(
      questionnaireModel: null == questionnaireModel
          ? _value.questionnaireModel
          : questionnaireModel // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      answerList: null == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get questionnaireModel {
    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaireModel,
        (value) {
      return _then(_value.copyWith(questionnaireModel: value));
    });
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(
      {required this.questionnaireModel,
      required final List<AnswerModel> answerList,
      required this.selectedIndex})
      : _answerList = answerList;

  @override
  final QuestionnaireModel questionnaireModel;
  final List<AnswerModel> _answerList;
  @override
  List<AnswerModel> get answerList {
    if (_answerList is EqualUnmodifiableListView) return _answerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerList);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectItem(questionnaireModel: $questionnaireModel, answerList: $answerList, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.questionnaireModel, questionnaireModel) ||
                other.questionnaireModel == questionnaireModel) &&
            const DeepCollectionEquality()
                .equals(other._answerList, _answerList) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionnaireModel,
      const DeepCollectionEquality().hash(_answerList), selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionnaire,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        selectItem,
    required TResult Function() started,
  }) {
    return selectItem(questionnaireModel, answerList, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestionnaire,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult? Function()? started,
  }) {
    return selectItem?.call(questionnaireModel, answerList, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionnaire,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(questionnaireModel, answerList, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionnaire value) fetchQuestionnaire,
    required TResult Function(_Select value) selectItem,
    required TResult Function(_Started value) started,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult? Function(_Select value)? selectItem,
    TResult? Function(_Started value)? started,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult Function(_Select value)? selectItem,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class _Select implements QuestionnaireEvent {
  const factory _Select(
      {required final QuestionnaireModel questionnaireModel,
      required final List<AnswerModel> answerList,
      required final int selectedIndex}) = _$SelectImpl;

  QuestionnaireModel get questionnaireModel;
  List<AnswerModel> get answerList;
  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionnaire,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        selectItem,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestionnaire,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionnaire,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        selectItem,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionnaire value) fetchQuestionnaire,
    required TResult Function(_Select value) selectItem,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult? Function(_Select value)? selectItem,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionnaire value)? fetchQuestionnaire,
    TResult Function(_Select value)? selectItem,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionnaireEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$QuestionnaireState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuestionnaireState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        success,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements QuestionnaireState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuestionnaireState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionnaireState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'QuestionnaireState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuestionnaireState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {QuestionnaireModel questionnaireModel,
      List<AnswerModel> answerList,
      int selectedIndex});

  $QuestionnaireModelCopyWith<$Res> get questionnaireModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaireModel = null,
    Object? answerList = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$SuccessImpl(
      questionnaireModel: null == questionnaireModel
          ? _value.questionnaireModel
          : questionnaireModel // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      answerList: null == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get questionnaireModel {
    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaireModel,
        (value) {
      return _then(_value.copyWith(questionnaireModel: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.questionnaireModel,
      required final List<AnswerModel> answerList,
      required this.selectedIndex})
      : _answerList = answerList;

  @override
  final QuestionnaireModel questionnaireModel;
  final List<AnswerModel> _answerList;
  @override
  List<AnswerModel> get answerList {
    if (_answerList is EqualUnmodifiableListView) return _answerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerList);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'QuestionnaireState.success(questionnaireModel: $questionnaireModel, answerList: $answerList, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.questionnaireModel, questionnaireModel) ||
                other.questionnaireModel == questionnaireModel) &&
            const DeepCollectionEquality()
                .equals(other._answerList, _answerList) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionnaireModel,
      const DeepCollectionEquality().hash(_answerList), selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)
        success,
  }) {
    return success(questionnaireModel, answerList, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
  }) {
    return success?.call(questionnaireModel, answerList, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(questionnaireModel, answerList, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements QuestionnaireState {
  const factory _Success(
      {required final QuestionnaireModel questionnaireModel,
      required final List<AnswerModel> answerList,
      required final int selectedIndex}) = _$SuccessImpl;

  QuestionnaireModel get questionnaireModel;
  List<AnswerModel> get answerList;
  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
