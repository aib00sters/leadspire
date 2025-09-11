// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  List<String> get parentAnswerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
  @useResult
  $Res call(
      {String imageUrl,
      String title,
      String subTitle,
      String questionId,
      List<String> parentAnswerId});
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? subTitle = null,
    Object? questionId = null,
    Object? parentAnswerId = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      parentAnswerId: null == parentAnswerId
          ? _value.parentAnswerId
          : parentAnswerId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireModelImplCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$QuestionnaireModelImplCopyWith(_$QuestionnaireModelImpl value,
          $Res Function(_$QuestionnaireModelImpl) then) =
      __$$QuestionnaireModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String title,
      String subTitle,
      String questionId,
      List<String> parentAnswerId});
}

/// @nodoc
class __$$QuestionnaireModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$QuestionnaireModelImpl>
    implements _$$QuestionnaireModelImplCopyWith<$Res> {
  __$$QuestionnaireModelImplCopyWithImpl(_$QuestionnaireModelImpl _value,
      $Res Function(_$QuestionnaireModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? subTitle = null,
    Object? questionId = null,
    Object? parentAnswerId = null,
  }) {
    return _then(_$QuestionnaireModelImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      parentAnswerId: null == parentAnswerId
          ? _value._parentAnswerId
          : parentAnswerId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireModelImpl implements _QuestionnaireModel {
  const _$QuestionnaireModelImpl(
      {required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.questionId,
      required final List<String> parentAnswerId})
      : _parentAnswerId = parentAnswerId;

  factory _$QuestionnaireModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireModelImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String questionId;
  final List<String> _parentAnswerId;
  @override
  List<String> get parentAnswerId {
    if (_parentAnswerId is EqualUnmodifiableListView) return _parentAnswerId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parentAnswerId);
  }

  @override
  String toString() {
    return 'QuestionnaireModel(imageUrl: $imageUrl, title: $title, subTitle: $subTitle, questionId: $questionId, parentAnswerId: $parentAnswerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            const DeepCollectionEquality()
                .equals(other._parentAnswerId, _parentAnswerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title, subTitle,
      questionId, const DeepCollectionEquality().hash(_parentAnswerId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      __$$QuestionnaireModelImplCopyWithImpl<_$QuestionnaireModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireModel implements QuestionnaireModel {
  const factory _QuestionnaireModel(
      {required final String imageUrl,
      required final String title,
      required final String subTitle,
      required final String questionId,
      required final List<String> parentAnswerId}) = _$QuestionnaireModelImpl;

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireModelImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get questionId;
  @override
  List<String> get parentAnswerId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
