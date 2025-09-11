// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessiondata_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessiondataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? avatar_video,
            bool? istalking)
        getsessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Getsessions value) getsessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Getsessions value)? getsessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Getsessions value)? getsessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessiondataEventCopyWith<$Res> {
  factory $SessiondataEventCopyWith(
          SessiondataEvent value, $Res Function(SessiondataEvent) then) =
      _$SessiondataEventCopyWithImpl<$Res, SessiondataEvent>;
}

/// @nodoc
class _$SessiondataEventCopyWithImpl<$Res, $Val extends SessiondataEvent>
    implements $SessiondataEventCopyWith<$Res> {
  _$SessiondataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SessiondataEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SessiondataEvent.started()';
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
    required TResult Function() started,
    required TResult Function(
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? avatar_video,
            bool? istalking)
        getsessions,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Getsessions value) getsessions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Getsessions value)? getsessions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Getsessions value)? getsessions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SessiondataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetsessionsImplCopyWith<$Res> {
  factory _$$GetsessionsImplCopyWith(
          _$GetsessionsImpl value, $Res Function(_$GetsessionsImpl) then) =
      __$$GetsessionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? assistantid,
      String? assistantname,
      String? image,
      String? heroindex,
      String? avatar_video,
      bool? istalking});
}

/// @nodoc
class __$$GetsessionsImplCopyWithImpl<$Res>
    extends _$SessiondataEventCopyWithImpl<$Res, _$GetsessionsImpl>
    implements _$$GetsessionsImplCopyWith<$Res> {
  __$$GetsessionsImplCopyWithImpl(
      _$GetsessionsImpl _value, $Res Function(_$GetsessionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistantid = freezed,
    Object? assistantname = freezed,
    Object? image = freezed,
    Object? heroindex = freezed,
    Object? avatar_video = freezed,
    Object? istalking = freezed,
  }) {
    return _then(_$GetsessionsImpl(
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantname: freezed == assistantname
          ? _value.assistantname
          : assistantname // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      heroindex: freezed == heroindex
          ? _value.heroindex
          : heroindex // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_video: freezed == avatar_video
          ? _value.avatar_video
          : avatar_video // ignore: cast_nullable_to_non_nullable
              as String?,
      istalking: freezed == istalking
          ? _value.istalking
          : istalking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetsessionsImpl implements _Getsessions {
  const _$GetsessionsImpl(
      {this.assistantid,
      this.assistantname,
      this.image,
      this.heroindex,
      this.avatar_video,
      this.istalking});

  @override
  final String? assistantid;
  @override
  final String? assistantname;
  @override
  final String? image;
  @override
  final String? heroindex;
  @override
  final String? avatar_video;
  @override
  final bool? istalking;

  @override
  String toString() {
    return 'SessiondataEvent.getsessions(assistantid: $assistantid, assistantname: $assistantname, image: $image, heroindex: $heroindex, avatar_video: $avatar_video, istalking: $istalking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetsessionsImpl &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.assistantname, assistantname) ||
                other.assistantname == assistantname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.heroindex, heroindex) ||
                other.heroindex == heroindex) &&
            (identical(other.avatar_video, avatar_video) ||
                other.avatar_video == avatar_video) &&
            (identical(other.istalking, istalking) ||
                other.istalking == istalking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistantid, assistantname,
      image, heroindex, avatar_video, istalking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetsessionsImplCopyWith<_$GetsessionsImpl> get copyWith =>
      __$$GetsessionsImplCopyWithImpl<_$GetsessionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? avatar_video,
            bool? istalking)
        getsessions,
  }) {
    return getsessions(
        assistantid, assistantname, image, heroindex, avatar_video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
  }) {
    return getsessions?.call(
        assistantid, assistantname, image, heroindex, avatar_video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? avatar_video, bool? istalking)?
        getsessions,
    required TResult orElse(),
  }) {
    if (getsessions != null) {
      return getsessions(assistantid, assistantname, image, heroindex,
          avatar_video, istalking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Getsessions value) getsessions,
  }) {
    return getsessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Getsessions value)? getsessions,
  }) {
    return getsessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Getsessions value)? getsessions,
    required TResult orElse(),
  }) {
    if (getsessions != null) {
      return getsessions(this);
    }
    return orElse();
  }
}

abstract class _Getsessions implements SessiondataEvent {
  const factory _Getsessions(
      {final String? assistantid,
      final String? assistantname,
      final String? image,
      final String? heroindex,
      final String? avatar_video,
      final bool? istalking}) = _$GetsessionsImpl;

  String? get assistantid;
  String? get assistantname;
  String? get image;
  String? get heroindex;
  String? get avatar_video;
  bool? get istalking;
  @JsonKey(ignore: true)
  _$$GetsessionsImplCopyWith<_$GetsessionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessiondataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)
        getsessionssuccess,
    required TResult Function(String? assistantid, String? assistantname,
            String? image, String? heroindex, String? video, bool? istalking)
        sessionsempty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Getsessionssuccess value) getsessionssuccess,
    required TResult Function(_Sessionsempty value) sessionsempty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult? Function(_Sessionsempty value)? sessionsempty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult Function(_Sessionsempty value)? sessionsempty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessiondataStateCopyWith<$Res> {
  factory $SessiondataStateCopyWith(
          SessiondataState value, $Res Function(SessiondataState) then) =
      _$SessiondataStateCopyWithImpl<$Res, SessiondataState>;
}

/// @nodoc
class _$SessiondataStateCopyWithImpl<$Res, $Val extends SessiondataState>
    implements $SessiondataStateCopyWith<$Res> {
  _$SessiondataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SessiondataStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SessiondataState.initial()';
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
    required TResult Function() initial,
    required TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)
        getsessionssuccess,
    required TResult Function(String? assistantid, String? assistantname,
            String? image, String? heroindex, String? video, bool? istalking)
        sessionsempty,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Getsessionssuccess value) getsessionssuccess,
    required TResult Function(_Sessionsempty value) sessionsempty,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult? Function(_Sessionsempty value)? sessionsempty,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult Function(_Sessionsempty value)? sessionsempty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SessiondataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetsessionssuccessImplCopyWith<$Res> {
  factory _$$GetsessionssuccessImplCopyWith(_$GetsessionssuccessImpl value,
          $Res Function(_$GetsessionssuccessImpl) then) =
      __$$GetsessionssuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<SessionDetail>? data,
      String? assistantid,
      String? assistantname,
      String? image,
      String? heroindex,
      String? video,
      bool? istalking});
}

/// @nodoc
class __$$GetsessionssuccessImplCopyWithImpl<$Res>
    extends _$SessiondataStateCopyWithImpl<$Res, _$GetsessionssuccessImpl>
    implements _$$GetsessionssuccessImplCopyWith<$Res> {
  __$$GetsessionssuccessImplCopyWithImpl(_$GetsessionssuccessImpl _value,
      $Res Function(_$GetsessionssuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? assistantid = freezed,
    Object? assistantname = freezed,
    Object? image = freezed,
    Object? heroindex = freezed,
    Object? video = freezed,
    Object? istalking = freezed,
  }) {
    return _then(_$GetsessionssuccessImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SessionDetail>?,
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantname: freezed == assistantname
          ? _value.assistantname
          : assistantname // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      heroindex: freezed == heroindex
          ? _value.heroindex
          : heroindex // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      istalking: freezed == istalking
          ? _value.istalking
          : istalking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetsessionssuccessImpl implements _Getsessionssuccess {
  const _$GetsessionssuccessImpl(
      {final List<SessionDetail>? data,
      this.assistantid,
      this.assistantname,
      this.image,
      this.heroindex,
      this.video,
      this.istalking})
      : _data = data;

  final List<SessionDetail>? _data;
  @override
  List<SessionDetail>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? assistantid;
  @override
  final String? assistantname;
  @override
  final String? image;
  @override
  final String? heroindex;
  @override
  final String? video;
  @override
  final bool? istalking;

  @override
  String toString() {
    return 'SessiondataState.getsessionssuccess(data: $data, assistantid: $assistantid, assistantname: $assistantname, image: $image, heroindex: $heroindex, video: $video, istalking: $istalking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetsessionssuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.assistantname, assistantname) ||
                other.assistantname == assistantname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.heroindex, heroindex) ||
                other.heroindex == heroindex) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.istalking, istalking) ||
                other.istalking == istalking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      assistantid,
      assistantname,
      image,
      heroindex,
      video,
      istalking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetsessionssuccessImplCopyWith<_$GetsessionssuccessImpl> get copyWith =>
      __$$GetsessionssuccessImplCopyWithImpl<_$GetsessionssuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)
        getsessionssuccess,
    required TResult Function(String? assistantid, String? assistantname,
            String? image, String? heroindex, String? video, bool? istalking)
        sessionsempty,
    required TResult Function() error,
  }) {
    return getsessionssuccess(
        data, assistantid, assistantname, image, heroindex, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult? Function()? error,
  }) {
    return getsessionssuccess?.call(
        data, assistantid, assistantname, image, heroindex, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (getsessionssuccess != null) {
      return getsessionssuccess(
          data, assistantid, assistantname, image, heroindex, video, istalking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Getsessionssuccess value) getsessionssuccess,
    required TResult Function(_Sessionsempty value) sessionsempty,
    required TResult Function(_Error value) error,
  }) {
    return getsessionssuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult? Function(_Sessionsempty value)? sessionsempty,
    TResult? Function(_Error value)? error,
  }) {
    return getsessionssuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult Function(_Sessionsempty value)? sessionsempty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getsessionssuccess != null) {
      return getsessionssuccess(this);
    }
    return orElse();
  }
}

abstract class _Getsessionssuccess implements SessiondataState {
  const factory _Getsessionssuccess(
      {final List<SessionDetail>? data,
      final String? assistantid,
      final String? assistantname,
      final String? image,
      final String? heroindex,
      final String? video,
      final bool? istalking}) = _$GetsessionssuccessImpl;

  List<SessionDetail>? get data;
  String? get assistantid;
  String? get assistantname;
  String? get image;
  String? get heroindex;
  String? get video;
  bool? get istalking;
  @JsonKey(ignore: true)
  _$$GetsessionssuccessImplCopyWith<_$GetsessionssuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionsemptyImplCopyWith<$Res> {
  factory _$$SessionsemptyImplCopyWith(
          _$SessionsemptyImpl value, $Res Function(_$SessionsemptyImpl) then) =
      __$$SessionsemptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? assistantid,
      String? assistantname,
      String? image,
      String? heroindex,
      String? video,
      bool? istalking});
}

/// @nodoc
class __$$SessionsemptyImplCopyWithImpl<$Res>
    extends _$SessiondataStateCopyWithImpl<$Res, _$SessionsemptyImpl>
    implements _$$SessionsemptyImplCopyWith<$Res> {
  __$$SessionsemptyImplCopyWithImpl(
      _$SessionsemptyImpl _value, $Res Function(_$SessionsemptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistantid = freezed,
    Object? assistantname = freezed,
    Object? image = freezed,
    Object? heroindex = freezed,
    Object? video = freezed,
    Object? istalking = freezed,
  }) {
    return _then(_$SessionsemptyImpl(
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantname: freezed == assistantname
          ? _value.assistantname
          : assistantname // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      heroindex: freezed == heroindex
          ? _value.heroindex
          : heroindex // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      istalking: freezed == istalking
          ? _value.istalking
          : istalking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SessionsemptyImpl implements _Sessionsempty {
  const _$SessionsemptyImpl(
      {this.assistantid,
      this.assistantname,
      this.image,
      this.heroindex,
      this.video,
      this.istalking});

  @override
  final String? assistantid;
  @override
  final String? assistantname;
  @override
  final String? image;
  @override
  final String? heroindex;
  @override
  final String? video;
  @override
  final bool? istalking;

  @override
  String toString() {
    return 'SessiondataState.sessionsempty(assistantid: $assistantid, assistantname: $assistantname, image: $image, heroindex: $heroindex, video: $video, istalking: $istalking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsemptyImpl &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.assistantname, assistantname) ||
                other.assistantname == assistantname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.heroindex, heroindex) ||
                other.heroindex == heroindex) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.istalking, istalking) ||
                other.istalking == istalking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistantid, assistantname,
      image, heroindex, video, istalking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsemptyImplCopyWith<_$SessionsemptyImpl> get copyWith =>
      __$$SessionsemptyImplCopyWithImpl<_$SessionsemptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)
        getsessionssuccess,
    required TResult Function(String? assistantid, String? assistantname,
            String? image, String? heroindex, String? video, bool? istalking)
        sessionsempty,
    required TResult Function() error,
  }) {
    return sessionsempty(
        assistantid, assistantname, image, heroindex, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult? Function()? error,
  }) {
    return sessionsempty?.call(
        assistantid, assistantname, image, heroindex, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (sessionsempty != null) {
      return sessionsempty(
          assistantid, assistantname, image, heroindex, video, istalking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Getsessionssuccess value) getsessionssuccess,
    required TResult Function(_Sessionsempty value) sessionsempty,
    required TResult Function(_Error value) error,
  }) {
    return sessionsempty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult? Function(_Sessionsempty value)? sessionsempty,
    TResult? Function(_Error value)? error,
  }) {
    return sessionsempty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult Function(_Sessionsempty value)? sessionsempty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sessionsempty != null) {
      return sessionsempty(this);
    }
    return orElse();
  }
}

abstract class _Sessionsempty implements SessiondataState {
  const factory _Sessionsempty(
      {final String? assistantid,
      final String? assistantname,
      final String? image,
      final String? heroindex,
      final String? video,
      final bool? istalking}) = _$SessionsemptyImpl;

  String? get assistantid;
  String? get assistantname;
  String? get image;
  String? get heroindex;
  String? get video;
  bool? get istalking;
  @JsonKey(ignore: true)
  _$$SessionsemptyImplCopyWith<_$SessionsemptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SessiondataStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SessiondataState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)
        getsessionssuccess,
    required TResult Function(String? assistantid, String? assistantname,
            String? image, String? heroindex, String? video, bool? istalking)
        sessionsempty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult? Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<SessionDetail>? data,
            String? assistantid,
            String? assistantname,
            String? image,
            String? heroindex,
            String? video,
            bool? istalking)?
        getsessionssuccess,
    TResult Function(String? assistantid, String? assistantname, String? image,
            String? heroindex, String? video, bool? istalking)?
        sessionsempty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Getsessionssuccess value) getsessionssuccess,
    required TResult Function(_Sessionsempty value) sessionsempty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult? Function(_Sessionsempty value)? sessionsempty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Getsessionssuccess value)? getsessionssuccess,
    TResult Function(_Sessionsempty value)? sessionsempty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SessiondataState {
  const factory _Error() = _$ErrorImpl;
}
