// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gethistory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GethistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid)
        gethistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid)? gethistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid)? gethistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Gethistory value) gethistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Gethistory value)? gethistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Gethistory value)? gethistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GethistoryEventCopyWith<$Res> {
  factory $GethistoryEventCopyWith(
          GethistoryEvent value, $Res Function(GethistoryEvent) then) =
      _$GethistoryEventCopyWithImpl<$Res, GethistoryEvent>;
}

/// @nodoc
class _$GethistoryEventCopyWithImpl<$Res, $Val extends GethistoryEvent>
    implements $GethistoryEventCopyWith<$Res> {
  _$GethistoryEventCopyWithImpl(this._value, this._then);

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
    extends _$GethistoryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'GethistoryEvent.started()';
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
    required TResult Function(String? assistantid, String? sessionid)
        gethistory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid)? gethistory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid)? gethistory,
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
    required TResult Function(_Gethistory value) gethistory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Gethistory value)? gethistory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Gethistory value)? gethistory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GethistoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GethistoryImplCopyWith<$Res> {
  factory _$$GethistoryImplCopyWith(
          _$GethistoryImpl value, $Res Function(_$GethistoryImpl) then) =
      __$$GethistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? assistantid, String? sessionid});
}

/// @nodoc
class __$$GethistoryImplCopyWithImpl<$Res>
    extends _$GethistoryEventCopyWithImpl<$Res, _$GethistoryImpl>
    implements _$$GethistoryImplCopyWith<$Res> {
  __$$GethistoryImplCopyWithImpl(
      _$GethistoryImpl _value, $Res Function(_$GethistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistantid = freezed,
    Object? sessionid = freezed,
  }) {
    return _then(_$GethistoryImpl(
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionid: freezed == sessionid
          ? _value.sessionid
          : sessionid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GethistoryImpl implements _Gethistory {
  const _$GethistoryImpl({required this.assistantid, required this.sessionid});

  @override
  final String? assistantid;
  @override
  final String? sessionid;

  @override
  String toString() {
    return 'GethistoryEvent.gethistory(assistantid: $assistantid, sessionid: $sessionid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GethistoryImpl &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.sessionid, sessionid) ||
                other.sessionid == sessionid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistantid, sessionid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GethistoryImplCopyWith<_$GethistoryImpl> get copyWith =>
      __$$GethistoryImplCopyWithImpl<_$GethistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid)
        gethistory,
  }) {
    return gethistory(assistantid, sessionid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid)? gethistory,
  }) {
    return gethistory?.call(assistantid, sessionid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid)? gethistory,
    required TResult orElse(),
  }) {
    if (gethistory != null) {
      return gethistory(assistantid, sessionid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Gethistory value) gethistory,
  }) {
    return gethistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Gethistory value)? gethistory,
  }) {
    return gethistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Gethistory value)? gethistory,
    required TResult orElse(),
  }) {
    if (gethistory != null) {
      return gethistory(this);
    }
    return orElse();
  }
}

abstract class _Gethistory implements GethistoryEvent {
  const factory _Gethistory(
      {required final String? assistantid,
      required final String? sessionid}) = _$GethistoryImpl;

  String? get assistantid;
  String? get sessionid;
  @JsonKey(ignore: true)
  _$$GethistoryImplCopyWith<_$GethistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GethistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Historymodel data) gethistorysuccess,
    required TResult Function() gethistoryerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Historymodel data)? gethistorysuccess,
    TResult? Function()? gethistoryerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Historymodel data)? gethistorysuccess,
    TResult Function()? gethistoryerror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Gethistorysuccess value) gethistorysuccess,
    required TResult Function(_Gethistoryerror value) gethistoryerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult? Function(_Gethistoryerror value)? gethistoryerror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult Function(_Gethistoryerror value)? gethistoryerror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GethistoryStateCopyWith<$Res> {
  factory $GethistoryStateCopyWith(
          GethistoryState value, $Res Function(GethistoryState) then) =
      _$GethistoryStateCopyWithImpl<$Res, GethistoryState>;
}

/// @nodoc
class _$GethistoryStateCopyWithImpl<$Res, $Val extends GethistoryState>
    implements $GethistoryStateCopyWith<$Res> {
  _$GethistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$GethistoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GethistoryState.initial()';
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
    required TResult Function(Historymodel data) gethistorysuccess,
    required TResult Function() gethistoryerror,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Historymodel data)? gethistorysuccess,
    TResult? Function()? gethistoryerror,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Historymodel data)? gethistorysuccess,
    TResult Function()? gethistoryerror,
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
    required TResult Function(_Gethistorysuccess value) gethistorysuccess,
    required TResult Function(_Gethistoryerror value) gethistoryerror,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult? Function(_Gethistoryerror value)? gethistoryerror,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult Function(_Gethistoryerror value)? gethistoryerror,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GethistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GethistorysuccessImplCopyWith<$Res> {
  factory _$$GethistorysuccessImplCopyWith(_$GethistorysuccessImpl value,
          $Res Function(_$GethistorysuccessImpl) then) =
      __$$GethistorysuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Historymodel data});
}

/// @nodoc
class __$$GethistorysuccessImplCopyWithImpl<$Res>
    extends _$GethistoryStateCopyWithImpl<$Res, _$GethistorysuccessImpl>
    implements _$$GethistorysuccessImplCopyWith<$Res> {
  __$$GethistorysuccessImplCopyWithImpl(_$GethistorysuccessImpl _value,
      $Res Function(_$GethistorysuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GethistorysuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Historymodel,
    ));
  }
}

/// @nodoc

class _$GethistorysuccessImpl implements _Gethistorysuccess {
  const _$GethistorysuccessImpl({required this.data});

  @override
  final Historymodel data;

  @override
  String toString() {
    return 'GethistoryState.gethistorysuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GethistorysuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GethistorysuccessImplCopyWith<_$GethistorysuccessImpl> get copyWith =>
      __$$GethistorysuccessImplCopyWithImpl<_$GethistorysuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Historymodel data) gethistorysuccess,
    required TResult Function() gethistoryerror,
  }) {
    return gethistorysuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Historymodel data)? gethistorysuccess,
    TResult? Function()? gethistoryerror,
  }) {
    return gethistorysuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Historymodel data)? gethistorysuccess,
    TResult Function()? gethistoryerror,
    required TResult orElse(),
  }) {
    if (gethistorysuccess != null) {
      return gethistorysuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Gethistorysuccess value) gethistorysuccess,
    required TResult Function(_Gethistoryerror value) gethistoryerror,
  }) {
    return gethistorysuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult? Function(_Gethistoryerror value)? gethistoryerror,
  }) {
    return gethistorysuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult Function(_Gethistoryerror value)? gethistoryerror,
    required TResult orElse(),
  }) {
    if (gethistorysuccess != null) {
      return gethistorysuccess(this);
    }
    return orElse();
  }
}

abstract class _Gethistorysuccess implements GethistoryState {
  const factory _Gethistorysuccess({required final Historymodel data}) =
      _$GethistorysuccessImpl;

  Historymodel get data;
  @JsonKey(ignore: true)
  _$$GethistorysuccessImplCopyWith<_$GethistorysuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GethistoryerrorImplCopyWith<$Res> {
  factory _$$GethistoryerrorImplCopyWith(_$GethistoryerrorImpl value,
          $Res Function(_$GethistoryerrorImpl) then) =
      __$$GethistoryerrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GethistoryerrorImplCopyWithImpl<$Res>
    extends _$GethistoryStateCopyWithImpl<$Res, _$GethistoryerrorImpl>
    implements _$$GethistoryerrorImplCopyWith<$Res> {
  __$$GethistoryerrorImplCopyWithImpl(
      _$GethistoryerrorImpl _value, $Res Function(_$GethistoryerrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GethistoryerrorImpl implements _Gethistoryerror {
  const _$GethistoryerrorImpl();

  @override
  String toString() {
    return 'GethistoryState.gethistoryerror()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GethistoryerrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Historymodel data) gethistorysuccess,
    required TResult Function() gethistoryerror,
  }) {
    return gethistoryerror();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Historymodel data)? gethistorysuccess,
    TResult? Function()? gethistoryerror,
  }) {
    return gethistoryerror?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Historymodel data)? gethistorysuccess,
    TResult Function()? gethistoryerror,
    required TResult orElse(),
  }) {
    if (gethistoryerror != null) {
      return gethistoryerror();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Gethistorysuccess value) gethistorysuccess,
    required TResult Function(_Gethistoryerror value) gethistoryerror,
  }) {
    return gethistoryerror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult? Function(_Gethistoryerror value)? gethistoryerror,
  }) {
    return gethistoryerror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Gethistorysuccess value)? gethistorysuccess,
    TResult Function(_Gethistoryerror value)? gethistoryerror,
    required TResult orElse(),
  }) {
    if (gethistoryerror != null) {
      return gethistoryerror(this);
    }
    return orElse();
  }
}

abstract class _Gethistoryerror implements GethistoryState {
  const factory _Gethistoryerror() = _$GethistoryerrorImpl;
}
