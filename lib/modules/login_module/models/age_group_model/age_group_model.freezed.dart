// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgeGroupModel _$AgeGroupModelFromJson(Map<String, dynamic> json) {
  return _AgeGroupModel.fromJson(json);
}

/// @nodoc
mixin _$AgeGroupModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get groupRange => throw _privateConstructorUsedError;
  String get fimageurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeGroupModelCopyWith<AgeGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeGroupModelCopyWith<$Res> {
  factory $AgeGroupModelCopyWith(
          AgeGroupModel value, $Res Function(AgeGroupModel) then) =
      _$AgeGroupModelCopyWithImpl<$Res, AgeGroupModel>;
  @useResult
  $Res call(
      {String imageUrl,
      String groupName,
      String groupId,
      String groupRange,
      String fimageurl});
}

/// @nodoc
class _$AgeGroupModelCopyWithImpl<$Res, $Val extends AgeGroupModel>
    implements $AgeGroupModelCopyWith<$Res> {
  _$AgeGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? groupName = null,
    Object? groupId = null,
    Object? groupRange = null,
    Object? fimageurl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupRange: null == groupRange
          ? _value.groupRange
          : groupRange // ignore: cast_nullable_to_non_nullable
              as String,
      fimageurl: null == fimageurl
          ? _value.fimageurl
          : fimageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgeGroupModelImplCopyWith<$Res>
    implements $AgeGroupModelCopyWith<$Res> {
  factory _$$AgeGroupModelImplCopyWith(
          _$AgeGroupModelImpl value, $Res Function(_$AgeGroupModelImpl) then) =
      __$$AgeGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String groupName,
      String groupId,
      String groupRange,
      String fimageurl});
}

/// @nodoc
class __$$AgeGroupModelImplCopyWithImpl<$Res>
    extends _$AgeGroupModelCopyWithImpl<$Res, _$AgeGroupModelImpl>
    implements _$$AgeGroupModelImplCopyWith<$Res> {
  __$$AgeGroupModelImplCopyWithImpl(
      _$AgeGroupModelImpl _value, $Res Function(_$AgeGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? groupName = null,
    Object? groupId = null,
    Object? groupRange = null,
    Object? fimageurl = null,
  }) {
    return _then(_$AgeGroupModelImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupRange: null == groupRange
          ? _value.groupRange
          : groupRange // ignore: cast_nullable_to_non_nullable
              as String,
      fimageurl: null == fimageurl
          ? _value.fimageurl
          : fimageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgeGroupModelImpl implements _AgeGroupModel {
  const _$AgeGroupModelImpl(
      {required this.imageUrl,
      required this.groupName,
      required this.groupId,
      required this.groupRange,
      required this.fimageurl});

  factory _$AgeGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeGroupModelImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String groupName;
  @override
  final String groupId;
  @override
  final String groupRange;
  @override
  final String fimageurl;

  @override
  String toString() {
    return 'AgeGroupModel(imageUrl: $imageUrl, groupName: $groupName, groupId: $groupId, groupRange: $groupRange, fimageurl: $fimageurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeGroupModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupRange, groupRange) ||
                other.groupRange == groupRange) &&
            (identical(other.fimageurl, fimageurl) ||
                other.fimageurl == fimageurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imageUrl, groupName, groupId, groupRange, fimageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeGroupModelImplCopyWith<_$AgeGroupModelImpl> get copyWith =>
      __$$AgeGroupModelImplCopyWithImpl<_$AgeGroupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeGroupModelImplToJson(
      this,
    );
  }
}

abstract class _AgeGroupModel implements AgeGroupModel {
  const factory _AgeGroupModel(
      {required final String imageUrl,
      required final String groupName,
      required final String groupId,
      required final String groupRange,
      required final String fimageurl}) = _$AgeGroupModelImpl;

  factory _AgeGroupModel.fromJson(Map<String, dynamic> json) =
      _$AgeGroupModelImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get groupName;
  @override
  String get groupId;
  @override
  String get groupRange;
  @override
  String get fimageurl;
  @override
  @JsonKey(ignore: true)
  _$$AgeGroupModelImplCopyWith<_$AgeGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
