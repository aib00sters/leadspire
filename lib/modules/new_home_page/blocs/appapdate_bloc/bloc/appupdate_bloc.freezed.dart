// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appupdate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppupdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkupdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_checkupdate value) checkupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_checkupdate value)? checkupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_checkupdate value)? checkupdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppupdateEventCopyWith<$Res> {
  factory $AppupdateEventCopyWith(
          AppupdateEvent value, $Res Function(AppupdateEvent) then) =
      _$AppupdateEventCopyWithImpl<$Res, AppupdateEvent>;
}

/// @nodoc
class _$AppupdateEventCopyWithImpl<$Res, $Val extends AppupdateEvent>
    implements $AppupdateEventCopyWith<$Res> {
  _$AppupdateEventCopyWithImpl(this._value, this._then);

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
    extends _$AppupdateEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AppupdateEvent.started()';
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
    required TResult Function() checkupdate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkupdate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkupdate,
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
    required TResult Function(_checkupdate value) checkupdate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_checkupdate value)? checkupdate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_checkupdate value)? checkupdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppupdateEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$checkupdateImplCopyWith<$Res> {
  factory _$$checkupdateImplCopyWith(
          _$checkupdateImpl value, $Res Function(_$checkupdateImpl) then) =
      __$$checkupdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkupdateImplCopyWithImpl<$Res>
    extends _$AppupdateEventCopyWithImpl<$Res, _$checkupdateImpl>
    implements _$$checkupdateImplCopyWith<$Res> {
  __$$checkupdateImplCopyWithImpl(
      _$checkupdateImpl _value, $Res Function(_$checkupdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkupdateImpl implements _checkupdate {
  const _$checkupdateImpl();

  @override
  String toString() {
    return 'AppupdateEvent.checkupdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkupdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkupdate,
  }) {
    return checkupdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkupdate,
  }) {
    return checkupdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkupdate,
    required TResult orElse(),
  }) {
    if (checkupdate != null) {
      return checkupdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_checkupdate value) checkupdate,
  }) {
    return checkupdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_checkupdate value)? checkupdate,
  }) {
    return checkupdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_checkupdate value)? checkupdate,
    required TResult orElse(),
  }) {
    if (checkupdate != null) {
      return checkupdate(this);
    }
    return orElse();
  }
}

abstract class _checkupdate implements AppupdateEvent {
  const factory _checkupdate() = _$checkupdateImpl;
}

/// @nodoc
mixin _$AppupdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String link) upadteavailable,
    required TResult Function() noupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String link)? upadteavailable,
    TResult? Function()? noupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String link)? upadteavailable,
    TResult Function()? noupdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_upadteavailable value) upadteavailable,
    required TResult Function(_notupdate value) noupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_upadteavailable value)? upadteavailable,
    TResult? Function(_notupdate value)? noupdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_upadteavailable value)? upadteavailable,
    TResult Function(_notupdate value)? noupdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppupdateStateCopyWith<$Res> {
  factory $AppupdateStateCopyWith(
          AppupdateState value, $Res Function(AppupdateState) then) =
      _$AppupdateStateCopyWithImpl<$Res, AppupdateState>;
}

/// @nodoc
class _$AppupdateStateCopyWithImpl<$Res, $Val extends AppupdateState>
    implements $AppupdateStateCopyWith<$Res> {
  _$AppupdateStateCopyWithImpl(this._value, this._then);

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
    extends _$AppupdateStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AppupdateState.initial()';
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
    required TResult Function(String link) upadteavailable,
    required TResult Function() noupdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String link)? upadteavailable,
    TResult? Function()? noupdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String link)? upadteavailable,
    TResult Function()? noupdate,
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
    required TResult Function(_upadteavailable value) upadteavailable,
    required TResult Function(_notupdate value) noupdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_upadteavailable value)? upadteavailable,
    TResult? Function(_notupdate value)? noupdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_upadteavailable value)? upadteavailable,
    TResult Function(_notupdate value)? noupdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppupdateState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$upadteavailableImplCopyWith<$Res> {
  factory _$$upadteavailableImplCopyWith(_$upadteavailableImpl value,
          $Res Function(_$upadteavailableImpl) then) =
      __$$upadteavailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$upadteavailableImplCopyWithImpl<$Res>
    extends _$AppupdateStateCopyWithImpl<$Res, _$upadteavailableImpl>
    implements _$$upadteavailableImplCopyWith<$Res> {
  __$$upadteavailableImplCopyWithImpl(
      _$upadteavailableImpl _value, $Res Function(_$upadteavailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$upadteavailableImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$upadteavailableImpl implements _upadteavailable {
  const _$upadteavailableImpl({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'AppupdateState.upadteavailable(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$upadteavailableImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$upadteavailableImplCopyWith<_$upadteavailableImpl> get copyWith =>
      __$$upadteavailableImplCopyWithImpl<_$upadteavailableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String link) upadteavailable,
    required TResult Function() noupdate,
  }) {
    return upadteavailable(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String link)? upadteavailable,
    TResult? Function()? noupdate,
  }) {
    return upadteavailable?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String link)? upadteavailable,
    TResult Function()? noupdate,
    required TResult orElse(),
  }) {
    if (upadteavailable != null) {
      return upadteavailable(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_upadteavailable value) upadteavailable,
    required TResult Function(_notupdate value) noupdate,
  }) {
    return upadteavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_upadteavailable value)? upadteavailable,
    TResult? Function(_notupdate value)? noupdate,
  }) {
    return upadteavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_upadteavailable value)? upadteavailable,
    TResult Function(_notupdate value)? noupdate,
    required TResult orElse(),
  }) {
    if (upadteavailable != null) {
      return upadteavailable(this);
    }
    return orElse();
  }
}

abstract class _upadteavailable implements AppupdateState {
  const factory _upadteavailable({required final String link}) =
      _$upadteavailableImpl;

  String get link;
  @JsonKey(ignore: true)
  _$$upadteavailableImplCopyWith<_$upadteavailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$notupdateImplCopyWith<$Res> {
  factory _$$notupdateImplCopyWith(
          _$notupdateImpl value, $Res Function(_$notupdateImpl) then) =
      __$$notupdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$notupdateImplCopyWithImpl<$Res>
    extends _$AppupdateStateCopyWithImpl<$Res, _$notupdateImpl>
    implements _$$notupdateImplCopyWith<$Res> {
  __$$notupdateImplCopyWithImpl(
      _$notupdateImpl _value, $Res Function(_$notupdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$notupdateImpl implements _notupdate {
  const _$notupdateImpl();

  @override
  String toString() {
    return 'AppupdateState.noupdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$notupdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String link) upadteavailable,
    required TResult Function() noupdate,
  }) {
    return noupdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String link)? upadteavailable,
    TResult? Function()? noupdate,
  }) {
    return noupdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String link)? upadteavailable,
    TResult Function()? noupdate,
    required TResult orElse(),
  }) {
    if (noupdate != null) {
      return noupdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_upadteavailable value) upadteavailable,
    required TResult Function(_notupdate value) noupdate,
  }) {
    return noupdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_upadteavailable value)? upadteavailable,
    TResult? Function(_notupdate value)? noupdate,
  }) {
    return noupdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_upadteavailable value)? upadteavailable,
    TResult Function(_notupdate value)? noupdate,
    required TResult orElse(),
  }) {
    if (noupdate != null) {
      return noupdate(this);
    }
    return orElse();
  }
}

abstract class _notupdate implements AppupdateState {
  const factory _notupdate() = _$notupdateImpl;
}
