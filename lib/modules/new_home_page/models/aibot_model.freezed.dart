// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aibot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AibotModel _$AibotModelFromJson(Map<String, dynamic> json) {
  return _AibotModel.fromJson(json);
}

/// @nodoc
mixin _$AibotModel {
  String get botname => throw _privateConstructorUsedError;
  String get threadId => throw _privateConstructorUsedError;
  String get assistantId => throw _privateConstructorUsedError;
  String get botimage => throw _privateConstructorUsedError;
  int get botid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AibotModelCopyWith<AibotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AibotModelCopyWith<$Res> {
  factory $AibotModelCopyWith(
          AibotModel value, $Res Function(AibotModel) then) =
      _$AibotModelCopyWithImpl<$Res, AibotModel>;
  @useResult
  $Res call(
      {String botname,
      String threadId,
      String assistantId,
      String botimage,
      int botid});
}

/// @nodoc
class _$AibotModelCopyWithImpl<$Res, $Val extends AibotModel>
    implements $AibotModelCopyWith<$Res> {
  _$AibotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botname = null,
    Object? threadId = null,
    Object? assistantId = null,
    Object? botimage = null,
    Object? botid = null,
  }) {
    return _then(_value.copyWith(
      botname: null == botname
          ? _value.botname
          : botname // ignore: cast_nullable_to_non_nullable
              as String,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
      assistantId: null == assistantId
          ? _value.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String,
      botimage: null == botimage
          ? _value.botimage
          : botimage // ignore: cast_nullable_to_non_nullable
              as String,
      botid: null == botid
          ? _value.botid
          : botid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AibotModelImplCopyWith<$Res>
    implements $AibotModelCopyWith<$Res> {
  factory _$$AibotModelImplCopyWith(
          _$AibotModelImpl value, $Res Function(_$AibotModelImpl) then) =
      __$$AibotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String botname,
      String threadId,
      String assistantId,
      String botimage,
      int botid});
}

/// @nodoc
class __$$AibotModelImplCopyWithImpl<$Res>
    extends _$AibotModelCopyWithImpl<$Res, _$AibotModelImpl>
    implements _$$AibotModelImplCopyWith<$Res> {
  __$$AibotModelImplCopyWithImpl(
      _$AibotModelImpl _value, $Res Function(_$AibotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botname = null,
    Object? threadId = null,
    Object? assistantId = null,
    Object? botimage = null,
    Object? botid = null,
  }) {
    return _then(_$AibotModelImpl(
      botname: null == botname
          ? _value.botname
          : botname // ignore: cast_nullable_to_non_nullable
              as String,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
      assistantId: null == assistantId
          ? _value.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String,
      botimage: null == botimage
          ? _value.botimage
          : botimage // ignore: cast_nullable_to_non_nullable
              as String,
      botid: null == botid
          ? _value.botid
          : botid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AibotModelImpl implements _AibotModel {
  const _$AibotModelImpl(
      {required this.botname,
      required this.threadId,
      required this.assistantId,
      required this.botimage,
      required this.botid});

  factory _$AibotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AibotModelImplFromJson(json);

  @override
  final String botname;
  @override
  final String threadId;
  @override
  final String assistantId;
  @override
  final String botimage;
  @override
  final int botid;

  @override
  String toString() {
    return 'AibotModel(botname: $botname, threadId: $threadId, assistantId: $assistantId, botimage: $botimage, botid: $botid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AibotModelImpl &&
            (identical(other.botname, botname) || other.botname == botname) &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId) &&
            (identical(other.botimage, botimage) ||
                other.botimage == botimage) &&
            (identical(other.botid, botid) || other.botid == botid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, botname, threadId, assistantId, botimage, botid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AibotModelImplCopyWith<_$AibotModelImpl> get copyWith =>
      __$$AibotModelImplCopyWithImpl<_$AibotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AibotModelImplToJson(
      this,
    );
  }
}

abstract class _AibotModel implements AibotModel {
  const factory _AibotModel(
      {required final String botname,
      required final String threadId,
      required final String assistantId,
      required final String botimage,
      required final int botid}) = _$AibotModelImpl;

  factory _AibotModel.fromJson(Map<String, dynamic> json) =
      _$AibotModelImpl.fromJson;

  @override
  String get botname;
  @override
  String get threadId;
  @override
  String get assistantId;
  @override
  String get botimage;
  @override
  int get botid;
  @override
  @JsonKey(ignore: true)
  _$$AibotModelImplCopyWith<_$AibotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
