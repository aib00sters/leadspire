// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonalSurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)
        changeQuestion,
    required TResult Function(String selectedAnsId) fetchSurveyData,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult? Function(String selectedAnsId)? fetchSurveyData,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult Function(String selectedAnsId)? fetchSurveyData,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuestion value) changeQuestion,
    required TResult Function(_FetchSurveyData value) fetchSurveyData,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuestion value)? changeQuestion,
    TResult? Function(_FetchSurveyData value)? fetchSurveyData,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuestion value)? changeQuestion,
    TResult Function(_FetchSurveyData value)? fetchSurveyData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalSurveyEventCopyWith<$Res> {
  factory $PersonalSurveyEventCopyWith(
          PersonalSurveyEvent value, $Res Function(PersonalSurveyEvent) then) =
      _$PersonalSurveyEventCopyWithImpl<$Res, PersonalSurveyEvent>;
}

/// @nodoc
class _$PersonalSurveyEventCopyWithImpl<$Res, $Val extends PersonalSurveyEvent>
    implements $PersonalSurveyEventCopyWith<$Res> {
  _$PersonalSurveyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeQuestionImplCopyWith<$Res> {
  factory _$$ChangeQuestionImplCopyWith(_$ChangeQuestionImpl value,
          $Res Function(_$ChangeQuestionImpl) then) =
      __$$ChangeQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {QuestionnaireModel questionnaireModel,
      List<PersonalSurveyResult> surveyResult,
      List<AnswerModel> answerList,
      AnswerModel? selectedAnswer});

  $QuestionnaireModelCopyWith<$Res> get questionnaireModel;
  $AnswerModelCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class __$$ChangeQuestionImplCopyWithImpl<$Res>
    extends _$PersonalSurveyEventCopyWithImpl<$Res, _$ChangeQuestionImpl>
    implements _$$ChangeQuestionImplCopyWith<$Res> {
  __$$ChangeQuestionImplCopyWithImpl(
      _$ChangeQuestionImpl _value, $Res Function(_$ChangeQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaireModel = null,
    Object? surveyResult = null,
    Object? answerList = null,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_$ChangeQuestionImpl(
      questionnaireModel: null == questionnaireModel
          ? _value.questionnaireModel
          : questionnaireModel // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      surveyResult: null == surveyResult
          ? _value._surveyResult
          : surveyResult // ignore: cast_nullable_to_non_nullable
              as List<PersonalSurveyResult>,
      answerList: null == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get selectedAnswer {
    if (_value.selectedAnswer == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.selectedAnswer!, (value) {
      return _then(_value.copyWith(selectedAnswer: value));
    });
  }
}

/// @nodoc

class _$ChangeQuestionImpl implements _ChangeQuestion {
  const _$ChangeQuestionImpl(
      {required this.questionnaireModel,
      required final List<PersonalSurveyResult> surveyResult,
      required final List<AnswerModel> answerList,
      required this.selectedAnswer})
      : _surveyResult = surveyResult,
        _answerList = answerList;

  @override
  final QuestionnaireModel questionnaireModel;
  final List<PersonalSurveyResult> _surveyResult;
  @override
  List<PersonalSurveyResult> get surveyResult {
    if (_surveyResult is EqualUnmodifiableListView) return _surveyResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyResult);
  }

  final List<AnswerModel> _answerList;
  @override
  List<AnswerModel> get answerList {
    if (_answerList is EqualUnmodifiableListView) return _answerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerList);
  }

  @override
  final AnswerModel? selectedAnswer;

  @override
  String toString() {
    return 'PersonalSurveyEvent.changeQuestion(questionnaireModel: $questionnaireModel, surveyResult: $surveyResult, answerList: $answerList, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeQuestionImpl &&
            (identical(other.questionnaireModel, questionnaireModel) ||
                other.questionnaireModel == questionnaireModel) &&
            const DeepCollectionEquality()
                .equals(other._surveyResult, _surveyResult) &&
            const DeepCollectionEquality()
                .equals(other._answerList, _answerList) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionnaireModel,
      const DeepCollectionEquality().hash(_surveyResult),
      const DeepCollectionEquality().hash(_answerList),
      selectedAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeQuestionImplCopyWith<_$ChangeQuestionImpl> get copyWith =>
      __$$ChangeQuestionImplCopyWithImpl<_$ChangeQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)
        changeQuestion,
    required TResult Function(String selectedAnsId) fetchSurveyData,
    required TResult Function() started,
  }) {
    return changeQuestion(
        questionnaireModel, surveyResult, answerList, selectedAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult? Function(String selectedAnsId)? fetchSurveyData,
    TResult? Function()? started,
  }) {
    return changeQuestion?.call(
        questionnaireModel, surveyResult, answerList, selectedAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult Function(String selectedAnsId)? fetchSurveyData,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (changeQuestion != null) {
      return changeQuestion(
          questionnaireModel, surveyResult, answerList, selectedAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuestion value) changeQuestion,
    required TResult Function(_FetchSurveyData value) fetchSurveyData,
    required TResult Function(_Started value) started,
  }) {
    return changeQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuestion value)? changeQuestion,
    TResult? Function(_FetchSurveyData value)? fetchSurveyData,
    TResult? Function(_Started value)? started,
  }) {
    return changeQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuestion value)? changeQuestion,
    TResult Function(_FetchSurveyData value)? fetchSurveyData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (changeQuestion != null) {
      return changeQuestion(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuestion implements PersonalSurveyEvent {
  const factory _ChangeQuestion(
      {required final QuestionnaireModel questionnaireModel,
      required final List<PersonalSurveyResult> surveyResult,
      required final List<AnswerModel> answerList,
      required final AnswerModel? selectedAnswer}) = _$ChangeQuestionImpl;

  QuestionnaireModel get questionnaireModel;
  List<PersonalSurveyResult> get surveyResult;
  List<AnswerModel> get answerList;
  AnswerModel? get selectedAnswer;
  @JsonKey(ignore: true)
  _$$ChangeQuestionImplCopyWith<_$ChangeQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSurveyDataImplCopyWith<$Res> {
  factory _$$FetchSurveyDataImplCopyWith(_$FetchSurveyDataImpl value,
          $Res Function(_$FetchSurveyDataImpl) then) =
      __$$FetchSurveyDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedAnsId});
}

/// @nodoc
class __$$FetchSurveyDataImplCopyWithImpl<$Res>
    extends _$PersonalSurveyEventCopyWithImpl<$Res, _$FetchSurveyDataImpl>
    implements _$$FetchSurveyDataImplCopyWith<$Res> {
  __$$FetchSurveyDataImplCopyWithImpl(
      _$FetchSurveyDataImpl _value, $Res Function(_$FetchSurveyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAnsId = null,
  }) {
    return _then(_$FetchSurveyDataImpl(
      selectedAnsId: null == selectedAnsId
          ? _value.selectedAnsId
          : selectedAnsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSurveyDataImpl implements _FetchSurveyData {
  const _$FetchSurveyDataImpl({required this.selectedAnsId});

  @override
  final String selectedAnsId;

  @override
  String toString() {
    return 'PersonalSurveyEvent.fetchSurveyData(selectedAnsId: $selectedAnsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSurveyDataImpl &&
            (identical(other.selectedAnsId, selectedAnsId) ||
                other.selectedAnsId == selectedAnsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAnsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSurveyDataImplCopyWith<_$FetchSurveyDataImpl> get copyWith =>
      __$$FetchSurveyDataImplCopyWithImpl<_$FetchSurveyDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)
        changeQuestion,
    required TResult Function(String selectedAnsId) fetchSurveyData,
    required TResult Function() started,
  }) {
    return fetchSurveyData(selectedAnsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult? Function(String selectedAnsId)? fetchSurveyData,
    TResult? Function()? started,
  }) {
    return fetchSurveyData?.call(selectedAnsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult Function(String selectedAnsId)? fetchSurveyData,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchSurveyData != null) {
      return fetchSurveyData(selectedAnsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeQuestion value) changeQuestion,
    required TResult Function(_FetchSurveyData value) fetchSurveyData,
    required TResult Function(_Started value) started,
  }) {
    return fetchSurveyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuestion value)? changeQuestion,
    TResult? Function(_FetchSurveyData value)? fetchSurveyData,
    TResult? Function(_Started value)? started,
  }) {
    return fetchSurveyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuestion value)? changeQuestion,
    TResult Function(_FetchSurveyData value)? fetchSurveyData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchSurveyData != null) {
      return fetchSurveyData(this);
    }
    return orElse();
  }
}

abstract class _FetchSurveyData implements PersonalSurveyEvent {
  const factory _FetchSurveyData({required final String selectedAnsId}) =
      _$FetchSurveyDataImpl;

  String get selectedAnsId;
  @JsonKey(ignore: true)
  _$$FetchSurveyDataImplCopyWith<_$FetchSurveyDataImpl> get copyWith =>
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
    extends _$PersonalSurveyEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PersonalSurveyEvent.started()';
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
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)
        changeQuestion,
    required TResult Function(String selectedAnsId) fetchSurveyData,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult? Function(String selectedAnsId)? fetchSurveyData,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<PersonalSurveyResult> surveyResult,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer)?
        changeQuestion,
    TResult Function(String selectedAnsId)? fetchSurveyData,
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
    required TResult Function(_ChangeQuestion value) changeQuestion,
    required TResult Function(_FetchSurveyData value) fetchSurveyData,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeQuestion value)? changeQuestion,
    TResult? Function(_FetchSurveyData value)? fetchSurveyData,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeQuestion value)? changeQuestion,
    TResult Function(_FetchSurveyData value)? fetchSurveyData,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PersonalSurveyEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$PersonalSurveyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
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
abstract class $PersonalSurveyStateCopyWith<$Res> {
  factory $PersonalSurveyStateCopyWith(
          PersonalSurveyState value, $Res Function(PersonalSurveyState) then) =
      _$PersonalSurveyStateCopyWithImpl<$Res, PersonalSurveyState>;
}

/// @nodoc
class _$PersonalSurveyStateCopyWithImpl<$Res, $Val extends PersonalSurveyState>
    implements $PersonalSurveyStateCopyWith<$Res> {
  _$PersonalSurveyStateCopyWithImpl(this._value, this._then);

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
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PersonalSurveyStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ErrorImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'PersonalSurveyState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)
        success,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
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

abstract class _Error implements PersonalSurveyState {
  const factory _Error({required final String errorMsg}) = _$ErrorImpl;

  String get errorMsg;
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
    extends _$PersonalSurveyStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PersonalSurveyState.initial()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
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

abstract class _Initial implements PersonalSurveyState {
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
    extends _$PersonalSurveyStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'PersonalSurveyState.loading()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
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

abstract class _Loading implements PersonalSurveyState {
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
      AnswerModel? selectedAnswer,
      List<PersonalSurveyResult> surveyResult,
      bool showButton});

  $QuestionnaireModelCopyWith<$Res> get questionnaireModel;
  $AnswerModelCopyWith<$Res>? get selectedAnswer;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PersonalSurveyStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaireModel = null,
    Object? answerList = null,
    Object? selectedAnswer = freezed,
    Object? surveyResult = null,
    Object? showButton = null,
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
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      surveyResult: null == surveyResult
          ? _value._surveyResult
          : surveyResult // ignore: cast_nullable_to_non_nullable
              as List<PersonalSurveyResult>,
      showButton: null == showButton
          ? _value.showButton
          : showButton // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get selectedAnswer {
    if (_value.selectedAnswer == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.selectedAnswer!, (value) {
      return _then(_value.copyWith(selectedAnswer: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.questionnaireModel,
      required final List<AnswerModel> answerList,
      required this.selectedAnswer,
      required final List<PersonalSurveyResult> surveyResult,
      required this.showButton})
      : _answerList = answerList,
        _surveyResult = surveyResult;

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
  final AnswerModel? selectedAnswer;
  final List<PersonalSurveyResult> _surveyResult;
  @override
  List<PersonalSurveyResult> get surveyResult {
    if (_surveyResult is EqualUnmodifiableListView) return _surveyResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyResult);
  }

  @override
  final bool showButton;

  @override
  String toString() {
    return 'PersonalSurveyState.success(questionnaireModel: $questionnaireModel, answerList: $answerList, selectedAnswer: $selectedAnswer, surveyResult: $surveyResult, showButton: $showButton)';
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
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            const DeepCollectionEquality()
                .equals(other._surveyResult, _surveyResult) &&
            (identical(other.showButton, showButton) ||
                other.showButton == showButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionnaireModel,
      const DeepCollectionEquality().hash(_answerList),
      selectedAnswer,
      const DeepCollectionEquality().hash(_surveyResult),
      showButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)
        success,
  }) {
    return success(questionnaireModel, answerList, selectedAnswer, surveyResult,
        showButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
  }) {
    return success?.call(questionnaireModel, answerList, selectedAnswer,
        surveyResult, showButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            QuestionnaireModel questionnaireModel,
            List<AnswerModel> answerList,
            AnswerModel? selectedAnswer,
            List<PersonalSurveyResult> surveyResult,
            bool showButton)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(questionnaireModel, answerList, selectedAnswer,
          surveyResult, showButton);
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

abstract class _Success implements PersonalSurveyState {
  const factory _Success(
      {required final QuestionnaireModel questionnaireModel,
      required final List<AnswerModel> answerList,
      required final AnswerModel? selectedAnswer,
      required final List<PersonalSurveyResult> surveyResult,
      required final bool showButton}) = _$SuccessImpl;

  QuestionnaireModel get questionnaireModel;
  List<AnswerModel> get answerList;
  AnswerModel? get selectedAnswer;
  List<PersonalSurveyResult> get surveyResult;
  bool get showButton;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
