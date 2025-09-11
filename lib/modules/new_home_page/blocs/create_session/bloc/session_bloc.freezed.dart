// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)
        createnewsession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_createnewsession value) createnewsession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_createnewsession value)? createnewsession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_createnewsession value)? createnewsession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventCopyWith<$Res> {
  factory $SessionEventCopyWith(
          SessionEvent value, $Res Function(SessionEvent) then) =
      _$SessionEventCopyWithImpl<$Res, SessionEvent>;
}

/// @nodoc
class _$SessionEventCopyWithImpl<$Res, $Val extends SessionEvent>
    implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._value, this._then);

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
    extends _$SessionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SessionEvent.started()';
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
    required TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)
        createnewsession,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
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
    required TResult Function(_createnewsession value) createnewsession,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_createnewsession value)? createnewsession,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_createnewsession value)? createnewsession,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SessionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$createnewsessionImplCopyWith<$Res> {
  factory _$$createnewsessionImplCopyWith(_$createnewsessionImpl value,
          $Res Function(_$createnewsessionImpl) then) =
      __$$createnewsessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? assstId,
      String? name,
      String? image,
      String? herowidgetstring,
      String? video,
      bool? isTalking});
}

/// @nodoc
class __$$createnewsessionImplCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res, _$createnewsessionImpl>
    implements _$$createnewsessionImplCopyWith<$Res> {
  __$$createnewsessionImplCopyWithImpl(_$createnewsessionImpl _value,
      $Res Function(_$createnewsessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assstId = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? herowidgetstring = freezed,
    Object? video = freezed,
    Object? isTalking = freezed,
  }) {
    return _then(_$createnewsessionImpl(
      assstId: freezed == assstId
          ? _value.assstId
          : assstId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      herowidgetstring: freezed == herowidgetstring
          ? _value.herowidgetstring
          : herowidgetstring // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      isTalking: freezed == isTalking
          ? _value.isTalking
          : isTalking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$createnewsessionImpl implements _createnewsession {
  const _$createnewsessionImpl(
      {this.assstId,
      this.name,
      this.image,
      this.herowidgetstring,
      this.video,
      this.isTalking});

  @override
  final String? assstId;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? herowidgetstring;
  @override
  final String? video;
  @override
  final bool? isTalking;

  @override
  String toString() {
    return 'SessionEvent.createnewsession(assstId: $assstId, name: $name, image: $image, herowidgetstring: $herowidgetstring, video: $video, isTalking: $isTalking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createnewsessionImpl &&
            (identical(other.assstId, assstId) || other.assstId == assstId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.herowidgetstring, herowidgetstring) ||
                other.herowidgetstring == herowidgetstring) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.isTalking, isTalking) ||
                other.isTalking == isTalking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, assstId, name, image, herowidgetstring, video, isTalking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createnewsessionImplCopyWith<_$createnewsessionImpl> get copyWith =>
      __$$createnewsessionImplCopyWithImpl<_$createnewsessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)
        createnewsession,
  }) {
    return createnewsession(
        assstId, name, image, herowidgetstring, video, isTalking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
  }) {
    return createnewsession?.call(
        assstId, name, image, herowidgetstring, video, isTalking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assstId, String? name, String? image,
            String? herowidgetstring, String? video, bool? isTalking)?
        createnewsession,
    required TResult orElse(),
  }) {
    if (createnewsession != null) {
      return createnewsession(
          assstId, name, image, herowidgetstring, video, isTalking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_createnewsession value) createnewsession,
  }) {
    return createnewsession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_createnewsession value)? createnewsession,
  }) {
    return createnewsession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_createnewsession value)? createnewsession,
    required TResult orElse(),
  }) {
    if (createnewsession != null) {
      return createnewsession(this);
    }
    return orElse();
  }
}

abstract class _createnewsession implements SessionEvent {
  const factory _createnewsession(
      {final String? assstId,
      final String? name,
      final String? image,
      final String? herowidgetstring,
      final String? video,
      final bool? isTalking}) = _$createnewsessionImpl;

  String? get assstId;
  String? get name;
  String? get image;
  String? get herowidgetstring;
  String? get video;
  bool? get isTalking;
  @JsonKey(ignore: true)
  _$$createnewsessionImplCopyWith<_$createnewsessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? sessionid, String? name, String? image,
            String? heroid, String? assistantid, String? video, bool? istalking)
        newsessionsuccess,
    required TResult Function() newsessionerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult? Function()? newsessionerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult Function()? newsessionerror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Newsessionsuccess value) newsessionsuccess,
    required TResult Function(_Newsessionerror value) newsessionerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult? Function(_Newsessionerror value)? newsessionerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult Function(_Newsessionerror value)? newsessionerror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res, SessionState>;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

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
    extends _$SessionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SessionState.initial()';
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
    required TResult Function(String? sessionid, String? name, String? image,
            String? heroid, String? assistantid, String? video, bool? istalking)
        newsessionsuccess,
    required TResult Function() newsessionerror,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult? Function()? newsessionerror,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult Function()? newsessionerror,
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
    required TResult Function(_Newsessionsuccess value) newsessionsuccess,
    required TResult Function(_Newsessionerror value) newsessionerror,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult? Function(_Newsessionerror value)? newsessionerror,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult Function(_Newsessionerror value)? newsessionerror,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SessionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NewsessionsuccessImplCopyWith<$Res> {
  factory _$$NewsessionsuccessImplCopyWith(_$NewsessionsuccessImpl value,
          $Res Function(_$NewsessionsuccessImpl) then) =
      __$$NewsessionsuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? sessionid,
      String? name,
      String? image,
      String? heroid,
      String? assistantid,
      String? video,
      bool? istalking});
}

/// @nodoc
class __$$NewsessionsuccessImplCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$NewsessionsuccessImpl>
    implements _$$NewsessionsuccessImplCopyWith<$Res> {
  __$$NewsessionsuccessImplCopyWithImpl(_$NewsessionsuccessImpl _value,
      $Res Function(_$NewsessionsuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionid = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? heroid = freezed,
    Object? assistantid = freezed,
    Object? video = freezed,
    Object? istalking = freezed,
  }) {
    return _then(_$NewsessionsuccessImpl(
      sessionid: freezed == sessionid
          ? _value.sessionid
          : sessionid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      heroid: freezed == heroid
          ? _value.heroid
          : heroid // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
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

class _$NewsessionsuccessImpl implements _Newsessionsuccess {
  const _$NewsessionsuccessImpl(
      {this.sessionid,
      this.name,
      this.image,
      this.heroid,
      this.assistantid,
      this.video,
      this.istalking});

  @override
  final String? sessionid;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? heroid;
  @override
  final String? assistantid;
  @override
  final String? video;
  @override
  final bool? istalking;

  @override
  String toString() {
    return 'SessionState.newsessionsuccess(sessionid: $sessionid, name: $name, image: $image, heroid: $heroid, assistantid: $assistantid, video: $video, istalking: $istalking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsessionsuccessImpl &&
            (identical(other.sessionid, sessionid) ||
                other.sessionid == sessionid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.heroid, heroid) || other.heroid == heroid) &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.istalking, istalking) ||
                other.istalking == istalking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionid, name, image, heroid,
      assistantid, video, istalking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsessionsuccessImplCopyWith<_$NewsessionsuccessImpl> get copyWith =>
      __$$NewsessionsuccessImplCopyWithImpl<_$NewsessionsuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? sessionid, String? name, String? image,
            String? heroid, String? assistantid, String? video, bool? istalking)
        newsessionsuccess,
    required TResult Function() newsessionerror,
  }) {
    return newsessionsuccess(
        sessionid, name, image, heroid, assistantid, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult? Function()? newsessionerror,
  }) {
    return newsessionsuccess?.call(
        sessionid, name, image, heroid, assistantid, video, istalking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult Function()? newsessionerror,
    required TResult orElse(),
  }) {
    if (newsessionsuccess != null) {
      return newsessionsuccess(
          sessionid, name, image, heroid, assistantid, video, istalking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Newsessionsuccess value) newsessionsuccess,
    required TResult Function(_Newsessionerror value) newsessionerror,
  }) {
    return newsessionsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult? Function(_Newsessionerror value)? newsessionerror,
  }) {
    return newsessionsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult Function(_Newsessionerror value)? newsessionerror,
    required TResult orElse(),
  }) {
    if (newsessionsuccess != null) {
      return newsessionsuccess(this);
    }
    return orElse();
  }
}

abstract class _Newsessionsuccess implements SessionState {
  const factory _Newsessionsuccess(
      {final String? sessionid,
      final String? name,
      final String? image,
      final String? heroid,
      final String? assistantid,
      final String? video,
      final bool? istalking}) = _$NewsessionsuccessImpl;

  String? get sessionid;
  String? get name;
  String? get image;
  String? get heroid;
  String? get assistantid;
  String? get video;
  bool? get istalking;
  @JsonKey(ignore: true)
  _$$NewsessionsuccessImplCopyWith<_$NewsessionsuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsessionerrorImplCopyWith<$Res> {
  factory _$$NewsessionerrorImplCopyWith(_$NewsessionerrorImpl value,
          $Res Function(_$NewsessionerrorImpl) then) =
      __$$NewsessionerrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsessionerrorImplCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$NewsessionerrorImpl>
    implements _$$NewsessionerrorImplCopyWith<$Res> {
  __$$NewsessionerrorImplCopyWithImpl(
      _$NewsessionerrorImpl _value, $Res Function(_$NewsessionerrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsessionerrorImpl implements _Newsessionerror {
  const _$NewsessionerrorImpl();

  @override
  String toString() {
    return 'SessionState.newsessionerror()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsessionerrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? sessionid, String? name, String? image,
            String? heroid, String? assistantid, String? video, bool? istalking)
        newsessionsuccess,
    required TResult Function() newsessionerror,
  }) {
    return newsessionerror();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult? Function()? newsessionerror,
  }) {
    return newsessionerror?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? sessionid,
            String? name,
            String? image,
            String? heroid,
            String? assistantid,
            String? video,
            bool? istalking)?
        newsessionsuccess,
    TResult Function()? newsessionerror,
    required TResult orElse(),
  }) {
    if (newsessionerror != null) {
      return newsessionerror();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Newsessionsuccess value) newsessionsuccess,
    required TResult Function(_Newsessionerror value) newsessionerror,
  }) {
    return newsessionerror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult? Function(_Newsessionerror value)? newsessionerror,
  }) {
    return newsessionerror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Newsessionsuccess value)? newsessionsuccess,
    TResult Function(_Newsessionerror value)? newsessionerror,
    required TResult orElse(),
  }) {
    if (newsessionerror != null) {
      return newsessionerror(this);
    }
    return orElse();
  }
}

abstract class _Newsessionerror implements SessionState {
  const factory _Newsessionerror() = _$NewsessionerrorImpl;
}
