// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckInBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checkInStatus, bool checkOutStatus)
        checkDate,
    required TResult Function() fetchCheckInDate,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult? Function()? fetchCheckInDate,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult Function()? fetchCheckInDate,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckDate value) checkDate,
    required TResult Function(_FetchCheckInDate value) fetchCheckInDate,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckDate value)? checkDate,
    TResult? Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckDate value)? checkDate,
    TResult Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInBlocEventCopyWith<$Res> {
  factory $CheckInBlocEventCopyWith(
          CheckInBlocEvent value, $Res Function(CheckInBlocEvent) then) =
      _$CheckInBlocEventCopyWithImpl<$Res, CheckInBlocEvent>;
}

/// @nodoc
class _$CheckInBlocEventCopyWithImpl<$Res, $Val extends CheckInBlocEvent>
    implements $CheckInBlocEventCopyWith<$Res> {
  _$CheckInBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckDateImplCopyWith<$Res> {
  factory _$$CheckDateImplCopyWith(
          _$CheckDateImpl value, $Res Function(_$CheckDateImpl) then) =
      __$$CheckDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool checkInStatus, bool checkOutStatus});
}

/// @nodoc
class __$$CheckDateImplCopyWithImpl<$Res>
    extends _$CheckInBlocEventCopyWithImpl<$Res, _$CheckDateImpl>
    implements _$$CheckDateImplCopyWith<$Res> {
  __$$CheckDateImplCopyWithImpl(
      _$CheckDateImpl _value, $Res Function(_$CheckDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkInStatus = null,
    Object? checkOutStatus = null,
  }) {
    return _then(_$CheckDateImpl(
      checkInStatus: null == checkInStatus
          ? _value.checkInStatus
          : checkInStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      checkOutStatus: null == checkOutStatus
          ? _value.checkOutStatus
          : checkOutStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckDateImpl implements _CheckDate {
  const _$CheckDateImpl(
      {required this.checkInStatus, required this.checkOutStatus});

  @override
  final bool checkInStatus;
  @override
  final bool checkOutStatus;

  @override
  String toString() {
    return 'CheckInBlocEvent.checkDate(checkInStatus: $checkInStatus, checkOutStatus: $checkOutStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDateImpl &&
            (identical(other.checkInStatus, checkInStatus) ||
                other.checkInStatus == checkInStatus) &&
            (identical(other.checkOutStatus, checkOutStatus) ||
                other.checkOutStatus == checkOutStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkInStatus, checkOutStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDateImplCopyWith<_$CheckDateImpl> get copyWith =>
      __$$CheckDateImplCopyWithImpl<_$CheckDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checkInStatus, bool checkOutStatus)
        checkDate,
    required TResult Function() fetchCheckInDate,
    required TResult Function() started,
  }) {
    return checkDate(checkInStatus, checkOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult? Function()? fetchCheckInDate,
    TResult? Function()? started,
  }) {
    return checkDate?.call(checkInStatus, checkOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult Function()? fetchCheckInDate,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (checkDate != null) {
      return checkDate(checkInStatus, checkOutStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckDate value) checkDate,
    required TResult Function(_FetchCheckInDate value) fetchCheckInDate,
    required TResult Function(_Started value) started,
  }) {
    return checkDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckDate value)? checkDate,
    TResult? Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult? Function(_Started value)? started,
  }) {
    return checkDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckDate value)? checkDate,
    TResult Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (checkDate != null) {
      return checkDate(this);
    }
    return orElse();
  }
}

abstract class _CheckDate implements CheckInBlocEvent {
  const factory _CheckDate(
      {required final bool checkInStatus,
      required final bool checkOutStatus}) = _$CheckDateImpl;

  bool get checkInStatus;
  bool get checkOutStatus;
  @JsonKey(ignore: true)
  _$$CheckDateImplCopyWith<_$CheckDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCheckInDateImplCopyWith<$Res> {
  factory _$$FetchCheckInDateImplCopyWith(_$FetchCheckInDateImpl value,
          $Res Function(_$FetchCheckInDateImpl) then) =
      __$$FetchCheckInDateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCheckInDateImplCopyWithImpl<$Res>
    extends _$CheckInBlocEventCopyWithImpl<$Res, _$FetchCheckInDateImpl>
    implements _$$FetchCheckInDateImplCopyWith<$Res> {
  __$$FetchCheckInDateImplCopyWithImpl(_$FetchCheckInDateImpl _value,
      $Res Function(_$FetchCheckInDateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCheckInDateImpl implements _FetchCheckInDate {
  const _$FetchCheckInDateImpl();

  @override
  String toString() {
    return 'CheckInBlocEvent.fetchCheckInDate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCheckInDateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checkInStatus, bool checkOutStatus)
        checkDate,
    required TResult Function() fetchCheckInDate,
    required TResult Function() started,
  }) {
    return fetchCheckInDate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult? Function()? fetchCheckInDate,
    TResult? Function()? started,
  }) {
    return fetchCheckInDate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult Function()? fetchCheckInDate,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchCheckInDate != null) {
      return fetchCheckInDate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckDate value) checkDate,
    required TResult Function(_FetchCheckInDate value) fetchCheckInDate,
    required TResult Function(_Started value) started,
  }) {
    return fetchCheckInDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckDate value)? checkDate,
    TResult? Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult? Function(_Started value)? started,
  }) {
    return fetchCheckInDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckDate value)? checkDate,
    TResult Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchCheckInDate != null) {
      return fetchCheckInDate(this);
    }
    return orElse();
  }
}

abstract class _FetchCheckInDate implements CheckInBlocEvent {
  const factory _FetchCheckInDate() = _$FetchCheckInDateImpl;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckInBlocEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CheckInBlocEvent.started()';
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
    required TResult Function(bool checkInStatus, bool checkOutStatus)
        checkDate,
    required TResult Function() fetchCheckInDate,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult? Function()? fetchCheckInDate,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checkInStatus, bool checkOutStatus)? checkDate,
    TResult Function()? fetchCheckInDate,
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
    required TResult Function(_CheckDate value) checkDate,
    required TResult Function(_FetchCheckInDate value) fetchCheckInDate,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckDate value)? checkDate,
    TResult? Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckDate value)? checkDate,
    TResult Function(_FetchCheckInDate value)? fetchCheckInDate,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckInBlocEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CheckInBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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
abstract class $CheckInBlocStateCopyWith<$Res> {
  factory $CheckInBlocStateCopyWith(
          CheckInBlocState value, $Res Function(CheckInBlocState) then) =
      _$CheckInBlocStateCopyWithImpl<$Res, CheckInBlocState>;
}

/// @nodoc
class _$CheckInBlocStateCopyWithImpl<$Res, $Val extends CheckInBlocState>
    implements $CheckInBlocStateCopyWith<$Res> {
  _$CheckInBlocStateCopyWithImpl(this._value, this._then);

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
    extends _$CheckInBlocStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CheckInBlocState.error(errorMessage: $errorMessage)';
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
    required TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)
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
    TResult? Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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
    TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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

abstract class _Error implements CheckInBlocState {
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
    extends _$CheckInBlocStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CheckInBlocState.initial()';
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
    required TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)
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
    TResult? Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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
    TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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

abstract class _Initial implements CheckInBlocState {
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
    extends _$CheckInBlocStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CheckInBlocState.loading()';
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
    required TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)
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
    TResult? Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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
    TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
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

abstract class _Loading implements CheckInBlocState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String date, String time, bool checkInStatus, bool checkOutStatus});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CheckInBlocStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? time = null,
    Object? checkInStatus = null,
    Object? checkOutStatus = null,
  }) {
    return _then(_$SuccessImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      checkInStatus: null == checkInStatus
          ? _value.checkInStatus
          : checkInStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      checkOutStatus: null == checkOutStatus
          ? _value.checkOutStatus
          : checkOutStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.date,
      required this.time,
      required this.checkInStatus,
      required this.checkOutStatus});

  @override
  final String date;
  @override
  final String time;
  @override
  final bool checkInStatus;
  @override
  final bool checkOutStatus;

  @override
  String toString() {
    return 'CheckInBlocState.success(date: $date, time: $time, checkInStatus: $checkInStatus, checkOutStatus: $checkOutStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.checkInStatus, checkInStatus) ||
                other.checkInStatus == checkInStatus) &&
            (identical(other.checkOutStatus, checkOutStatus) ||
                other.checkOutStatus == checkOutStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, time, checkInStatus, checkOutStatus);

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
    required TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)
        success,
  }) {
    return success(date, time, checkInStatus, checkOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
        success,
  }) {
    return success?.call(date, time, checkInStatus, checkOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String date, String time, bool checkInStatus, bool checkOutStatus)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(date, time, checkInStatus, checkOutStatus);
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

abstract class _Success implements CheckInBlocState {
  const factory _Success(
      {required final String date,
      required final String time,
      required final bool checkInStatus,
      required final bool checkOutStatus}) = _$SuccessImpl;

  String get date;
  String get time;
  bool get checkInStatus;
  bool get checkOutStatus;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
