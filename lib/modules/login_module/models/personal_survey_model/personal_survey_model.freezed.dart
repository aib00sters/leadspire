// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get referenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call({int id, String value, int referenceId});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, int referenceId});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? referenceId = null,
  }) {
    return _then(_$OptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  const _$OptionImpl(
      {required this.id, required this.value, required this.referenceId});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  final int referenceId;

  @override
  String toString() {
    return 'Option(id: $id, value: $value, referenceId: $referenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {required final int id,
      required final String value,
      required final int referenceId}) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  int get referenceId;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalSurveyModel _$PersonalSurveyModelFromJson(Map<String, dynamic> json) {
  return _PersonalSurveyModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalSurveyModel {
  List<SurveyDatum> get surveyData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalSurveyModelCopyWith<PersonalSurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalSurveyModelCopyWith<$Res> {
  factory $PersonalSurveyModelCopyWith(
          PersonalSurveyModel value, $Res Function(PersonalSurveyModel) then) =
      _$PersonalSurveyModelCopyWithImpl<$Res, PersonalSurveyModel>;
  @useResult
  $Res call({List<SurveyDatum> surveyData});
}

/// @nodoc
class _$PersonalSurveyModelCopyWithImpl<$Res, $Val extends PersonalSurveyModel>
    implements $PersonalSurveyModelCopyWith<$Res> {
  _$PersonalSurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyData = null,
  }) {
    return _then(_value.copyWith(
      surveyData: null == surveyData
          ? _value.surveyData
          : surveyData // ignore: cast_nullable_to_non_nullable
              as List<SurveyDatum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalSurveyModelImplCopyWith<$Res>
    implements $PersonalSurveyModelCopyWith<$Res> {
  factory _$$PersonalSurveyModelImplCopyWith(_$PersonalSurveyModelImpl value,
          $Res Function(_$PersonalSurveyModelImpl) then) =
      __$$PersonalSurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SurveyDatum> surveyData});
}

/// @nodoc
class __$$PersonalSurveyModelImplCopyWithImpl<$Res>
    extends _$PersonalSurveyModelCopyWithImpl<$Res, _$PersonalSurveyModelImpl>
    implements _$$PersonalSurveyModelImplCopyWith<$Res> {
  __$$PersonalSurveyModelImplCopyWithImpl(_$PersonalSurveyModelImpl _value,
      $Res Function(_$PersonalSurveyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyData = null,
  }) {
    return _then(_$PersonalSurveyModelImpl(
      surveyData: null == surveyData
          ? _value._surveyData
          : surveyData // ignore: cast_nullable_to_non_nullable
              as List<SurveyDatum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalSurveyModelImpl implements _PersonalSurveyModel {
  const _$PersonalSurveyModelImpl({required final List<SurveyDatum> surveyData})
      : _surveyData = surveyData;

  factory _$PersonalSurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalSurveyModelImplFromJson(json);

  final List<SurveyDatum> _surveyData;
  @override
  List<SurveyDatum> get surveyData {
    if (_surveyData is EqualUnmodifiableListView) return _surveyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyData);
  }

  @override
  String toString() {
    return 'PersonalSurveyModel(surveyData: $surveyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalSurveyModelImpl &&
            const DeepCollectionEquality()
                .equals(other._surveyData, _surveyData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_surveyData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalSurveyModelImplCopyWith<_$PersonalSurveyModelImpl> get copyWith =>
      __$$PersonalSurveyModelImplCopyWithImpl<_$PersonalSurveyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalSurveyModelImplToJson(
      this,
    );
  }
}

abstract class _PersonalSurveyModel implements PersonalSurveyModel {
  const factory _PersonalSurveyModel(
          {required final List<SurveyDatum> surveyData}) =
      _$PersonalSurveyModelImpl;

  factory _PersonalSurveyModel.fromJson(Map<String, dynamic> json) =
      _$PersonalSurveyModelImpl.fromJson;

  @override
  List<SurveyDatum> get surveyData;
  @override
  @JsonKey(ignore: true)
  _$$PersonalSurveyModelImplCopyWith<_$PersonalSurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyDatum _$SurveyDatumFromJson(Map<String, dynamic> json) {
  return _SurveyDatum.fromJson(json);
}

/// @nodoc
mixin _$SurveyDatum {
  int get quesionId => throw _privateConstructorUsedError;
  String get infoName => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyDatumCopyWith<SurveyDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDatumCopyWith<$Res> {
  factory $SurveyDatumCopyWith(
          SurveyDatum value, $Res Function(SurveyDatum) then) =
      _$SurveyDatumCopyWithImpl<$Res, SurveyDatum>;
  @useResult
  $Res call(
      {int quesionId, String infoName, String question, List<Option> options});
}

/// @nodoc
class _$SurveyDatumCopyWithImpl<$Res, $Val extends SurveyDatum>
    implements $SurveyDatumCopyWith<$Res> {
  _$SurveyDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quesionId = null,
    Object? infoName = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      quesionId: null == quesionId
          ? _value.quesionId
          : quesionId // ignore: cast_nullable_to_non_nullable
              as int,
      infoName: null == infoName
          ? _value.infoName
          : infoName // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyDatumImplCopyWith<$Res>
    implements $SurveyDatumCopyWith<$Res> {
  factory _$$SurveyDatumImplCopyWith(
          _$SurveyDatumImpl value, $Res Function(_$SurveyDatumImpl) then) =
      __$$SurveyDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int quesionId, String infoName, String question, List<Option> options});
}

/// @nodoc
class __$$SurveyDatumImplCopyWithImpl<$Res>
    extends _$SurveyDatumCopyWithImpl<$Res, _$SurveyDatumImpl>
    implements _$$SurveyDatumImplCopyWith<$Res> {
  __$$SurveyDatumImplCopyWithImpl(
      _$SurveyDatumImpl _value, $Res Function(_$SurveyDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quesionId = null,
    Object? infoName = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_$SurveyDatumImpl(
      quesionId: null == quesionId
          ? _value.quesionId
          : quesionId // ignore: cast_nullable_to_non_nullable
              as int,
      infoName: null == infoName
          ? _value.infoName
          : infoName // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyDatumImpl implements _SurveyDatum {
  const _$SurveyDatumImpl(
      {required this.quesionId,
      required this.infoName,
      required this.question,
      required final List<Option> options})
      : _options = options;

  factory _$SurveyDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyDatumImplFromJson(json);

  @override
  final int quesionId;
  @override
  final String infoName;
  @override
  final String question;
  final List<Option> _options;
  @override
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'SurveyDatum(quesionId: $quesionId, infoName: $infoName, question: $question, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyDatumImpl &&
            (identical(other.quesionId, quesionId) ||
                other.quesionId == quesionId) &&
            (identical(other.infoName, infoName) ||
                other.infoName == infoName) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quesionId, infoName, question,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyDatumImplCopyWith<_$SurveyDatumImpl> get copyWith =>
      __$$SurveyDatumImplCopyWithImpl<_$SurveyDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyDatumImplToJson(
      this,
    );
  }
}

abstract class _SurveyDatum implements SurveyDatum {
  const factory _SurveyDatum(
      {required final int quesionId,
      required final String infoName,
      required final String question,
      required final List<Option> options}) = _$SurveyDatumImpl;

  factory _SurveyDatum.fromJson(Map<String, dynamic> json) =
      _$SurveyDatumImpl.fromJson;

  @override
  int get quesionId;
  @override
  String get infoName;
  @override
  String get question;
  @override
  List<Option> get options;
  @override
  @JsonKey(ignore: true)
  _$$SurveyDatumImplCopyWith<_$SurveyDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
