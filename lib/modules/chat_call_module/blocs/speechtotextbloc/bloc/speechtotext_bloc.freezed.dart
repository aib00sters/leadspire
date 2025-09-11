// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speechtotext_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpeechtotextEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechtotextEventCopyWith<$Res> {
  factory $SpeechtotextEventCopyWith(
          SpeechtotextEvent value, $Res Function(SpeechtotextEvent) then) =
      _$SpeechtotextEventCopyWithImpl<$Res, SpeechtotextEvent>;
}

/// @nodoc
class _$SpeechtotextEventCopyWithImpl<$Res, $Val extends SpeechtotextEvent>
    implements $SpeechtotextEventCopyWith<$Res> {
  _$SpeechtotextEventCopyWithImpl(this._value, this._then);

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
    extends _$SpeechtotextEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SpeechtotextEvent.started()';
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
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
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
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SpeechtotextEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$resetImplCopyWith<$Res> {
  factory _$$resetImplCopyWith(
          _$resetImpl value, $Res Function(_$resetImpl) then) =
      __$$resetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$resetImplCopyWithImpl<$Res>
    extends _$SpeechtotextEventCopyWithImpl<$Res, _$resetImpl>
    implements _$$resetImplCopyWith<$Res> {
  __$$resetImplCopyWithImpl(
      _$resetImpl _value, $Res Function(_$resetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$resetImpl implements _reset {
  const _$resetImpl();

  @override
  String toString() {
    return 'SpeechtotextEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$resetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _reset implements SpeechtotextEvent {
  const factory _reset() = _$resetImpl;
}

/// @nodoc
abstract class _$$SpeechtotextstartImplCopyWith<$Res> {
  factory _$$SpeechtotextstartImplCopyWith(_$SpeechtotextstartImpl value,
          $Res Function(_$SpeechtotextstartImpl) then) =
      __$$SpeechtotextstartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? text, String? avatharname});
}

/// @nodoc
class __$$SpeechtotextstartImplCopyWithImpl<$Res>
    extends _$SpeechtotextEventCopyWithImpl<$Res, _$SpeechtotextstartImpl>
    implements _$$SpeechtotextstartImplCopyWith<$Res> {
  __$$SpeechtotextstartImplCopyWithImpl(_$SpeechtotextstartImpl _value,
      $Res Function(_$SpeechtotextstartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? avatharname = freezed,
  }) {
    return _then(_$SpeechtotextstartImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      avatharname: freezed == avatharname
          ? _value.avatharname
          : avatharname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SpeechtotextstartImpl implements _Speechtotextstart {
  const _$SpeechtotextstartImpl({this.text, this.avatharname});

  @override
  final String? text;
  @override
  final String? avatharname;

  @override
  String toString() {
    return 'SpeechtotextEvent.speechtotextstart(text: $text, avatharname: $avatharname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechtotextstartImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.avatharname, avatharname) ||
                other.avatharname == avatharname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, avatharname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechtotextstartImplCopyWith<_$SpeechtotextstartImpl> get copyWith =>
      __$$SpeechtotextstartImplCopyWithImpl<_$SpeechtotextstartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) {
    return speechtotextstart(text, avatharname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) {
    return speechtotextstart?.call(text, avatharname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
    required TResult orElse(),
  }) {
    if (speechtotextstart != null) {
      return speechtotextstart(text, avatharname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) {
    return speechtotextstart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) {
    return speechtotextstart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) {
    if (speechtotextstart != null) {
      return speechtotextstart(this);
    }
    return orElse();
  }
}

abstract class _Speechtotextstart implements SpeechtotextEvent {
  const factory _Speechtotextstart(
      {final String? text,
      final String? avatharname}) = _$SpeechtotextstartImpl;

  String? get text;
  String? get avatharname;
  @JsonKey(ignore: true)
  _$$SpeechtotextstartImplCopyWith<_$SpeechtotextstartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TexttospeechImplCopyWith<$Res> {
  factory _$$TexttospeechImplCopyWith(
          _$TexttospeechImpl value, $Res Function(_$TexttospeechImpl) then) =
      __$$TexttospeechImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? question,
      String? assistantid,
      String? sessionid,
      String? avatharname});
}

/// @nodoc
class __$$TexttospeechImplCopyWithImpl<$Res>
    extends _$SpeechtotextEventCopyWithImpl<$Res, _$TexttospeechImpl>
    implements _$$TexttospeechImplCopyWith<$Res> {
  __$$TexttospeechImplCopyWithImpl(
      _$TexttospeechImpl _value, $Res Function(_$TexttospeechImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? assistantid = freezed,
    Object? sessionid = freezed,
    Object? avatharname = freezed,
  }) {
    return _then(_$TexttospeechImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionid: freezed == sessionid
          ? _value.sessionid
          : sessionid // ignore: cast_nullable_to_non_nullable
              as String?,
      avatharname: freezed == avatharname
          ? _value.avatharname
          : avatharname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TexttospeechImpl implements _Texttospeech {
  const _$TexttospeechImpl(
      {this.question, this.assistantid, this.sessionid, this.avatharname});

  @override
  final String? question;
  @override
  final String? assistantid;
  @override
  final String? sessionid;
  @override
  final String? avatharname;

  @override
  String toString() {
    return 'SpeechtotextEvent.texttospeech(question: $question, assistantid: $assistantid, sessionid: $sessionid, avatharname: $avatharname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TexttospeechImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.sessionid, sessionid) ||
                other.sessionid == sessionid) &&
            (identical(other.avatharname, avatharname) ||
                other.avatharname == avatharname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, question, assistantid, sessionid, avatharname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TexttospeechImplCopyWith<_$TexttospeechImpl> get copyWith =>
      __$$TexttospeechImplCopyWithImpl<_$TexttospeechImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) {
    return texttospeech(question, assistantid, sessionid, avatharname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) {
    return texttospeech?.call(question, assistantid, sessionid, avatharname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
    required TResult orElse(),
  }) {
    if (texttospeech != null) {
      return texttospeech(question, assistantid, sessionid, avatharname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) {
    return texttospeech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) {
    return texttospeech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) {
    if (texttospeech != null) {
      return texttospeech(this);
    }
    return orElse();
  }
}

abstract class _Texttospeech implements SpeechtotextEvent {
  const factory _Texttospeech(
      {final String? question,
      final String? assistantid,
      final String? sessionid,
      final String? avatharname}) = _$TexttospeechImpl;

  String? get question;
  String? get assistantid;
  String? get sessionid;
  String? get avatharname;
  @JsonKey(ignore: true)
  _$$TexttospeechImplCopyWith<_$TexttospeechImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoplistenImplCopyWith<$Res> {
  factory _$$StoplistenImplCopyWith(
          _$StoplistenImpl value, $Res Function(_$StoplistenImpl) then) =
      __$$StoplistenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? question, String? assistantid, String? sessionid});
}

/// @nodoc
class __$$StoplistenImplCopyWithImpl<$Res>
    extends _$SpeechtotextEventCopyWithImpl<$Res, _$StoplistenImpl>
    implements _$$StoplistenImplCopyWith<$Res> {
  __$$StoplistenImplCopyWithImpl(
      _$StoplistenImpl _value, $Res Function(_$StoplistenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? assistantid = freezed,
    Object? sessionid = freezed,
  }) {
    return _then(_$StoplistenImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$StoplistenImpl implements _Stoplisten {
  const _$StoplistenImpl({this.question, this.assistantid, this.sessionid});

  @override
  final String? question;
  @override
  final String? assistantid;
  @override
  final String? sessionid;

  @override
  String toString() {
    return 'SpeechtotextEvent.stoplisten(question: $question, assistantid: $assistantid, sessionid: $sessionid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoplistenImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.sessionid, sessionid) ||
                other.sessionid == sessionid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, question, assistantid, sessionid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoplistenImplCopyWith<_$StoplistenImpl> get copyWith =>
      __$$StoplistenImplCopyWithImpl<_$StoplistenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String? text, String? avatharname)
        speechtotextstart,
    required TResult Function(String? question, String? assistantid,
            String? sessionid, String? avatharname)
        texttospeech,
    required TResult Function(
            String? question, String? assistantid, String? sessionid)
        stoplisten,
  }) {
    return stoplisten(question, assistantid, sessionid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? reset,
    TResult? Function(String? text, String? avatharname)? speechtotextstart,
    TResult? Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult? Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
  }) {
    return stoplisten?.call(question, assistantid, sessionid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String? text, String? avatharname)? speechtotextstart,
    TResult Function(String? question, String? assistantid, String? sessionid,
            String? avatharname)?
        texttospeech,
    TResult Function(String? question, String? assistantid, String? sessionid)?
        stoplisten,
    required TResult orElse(),
  }) {
    if (stoplisten != null) {
      return stoplisten(question, assistantid, sessionid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_reset value) reset,
    required TResult Function(_Speechtotextstart value) speechtotextstart,
    required TResult Function(_Texttospeech value) texttospeech,
    required TResult Function(_Stoplisten value) stoplisten,
  }) {
    return stoplisten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_reset value)? reset,
    TResult? Function(_Speechtotextstart value)? speechtotextstart,
    TResult? Function(_Texttospeech value)? texttospeech,
    TResult? Function(_Stoplisten value)? stoplisten,
  }) {
    return stoplisten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_reset value)? reset,
    TResult Function(_Speechtotextstart value)? speechtotextstart,
    TResult Function(_Texttospeech value)? texttospeech,
    TResult Function(_Stoplisten value)? stoplisten,
    required TResult orElse(),
  }) {
    if (stoplisten != null) {
      return stoplisten(this);
    }
    return orElse();
  }
}

abstract class _Stoplisten implements SpeechtotextEvent {
  const factory _Stoplisten(
      {final String? question,
      final String? assistantid,
      final String? sessionid}) = _$StoplistenImpl;

  String? get question;
  String? get assistantid;
  String? get sessionid;
  @JsonKey(ignore: true)
  _$$StoplistenImplCopyWith<_$StoplistenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpeechtotextState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechtotextStateCopyWith<$Res> {
  factory $SpeechtotextStateCopyWith(
          SpeechtotextState value, $Res Function(SpeechtotextState) then) =
      _$SpeechtotextStateCopyWithImpl<$Res, SpeechtotextState>;
}

/// @nodoc
class _$SpeechtotextStateCopyWithImpl<$Res, $Val extends SpeechtotextState>
    implements $SpeechtotextStateCopyWith<$Res> {
  _$SpeechtotextStateCopyWithImpl(this._value, this._then);

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
    extends _$SpeechtotextStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SpeechtotextState.initial()';
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
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
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
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SpeechtotextState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpeechtotextsucessImplCopyWith<$Res> {
  factory _$$SpeechtotextsucessImplCopyWith(_$SpeechtotextsucessImpl value,
          $Res Function(_$SpeechtotextsucessImpl) then) =
      __$$SpeechtotextsucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SpeechtotextsucessImplCopyWithImpl<$Res>
    extends _$SpeechtotextStateCopyWithImpl<$Res, _$SpeechtotextsucessImpl>
    implements _$$SpeechtotextsucessImplCopyWith<$Res> {
  __$$SpeechtotextsucessImplCopyWithImpl(_$SpeechtotextsucessImpl _value,
      $Res Function(_$SpeechtotextsucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SpeechtotextsucessImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpeechtotextsucessImpl implements _Speechtotextsucess {
  const _$SpeechtotextsucessImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SpeechtotextState.speechtotextsucess(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechtotextsucessImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechtotextsucessImplCopyWith<_$SpeechtotextsucessImpl> get copyWith =>
      __$$SpeechtotextsucessImplCopyWithImpl<_$SpeechtotextsucessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) {
    return speechtotextsucess(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) {
    return speechtotextsucess?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
    required TResult orElse(),
  }) {
    if (speechtotextsucess != null) {
      return speechtotextsucess(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) {
    return speechtotextsucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) {
    return speechtotextsucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) {
    if (speechtotextsucess != null) {
      return speechtotextsucess(this);
    }
    return orElse();
  }
}

abstract class _Speechtotextsucess implements SpeechtotextState {
  const factory _Speechtotextsucess({required final String text}) =
      _$SpeechtotextsucessImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SpeechtotextsucessImplCopyWith<_$SpeechtotextsucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TexttospeechsucessImplCopyWith<$Res> {
  factory _$$TexttospeechsucessImplCopyWith(_$TexttospeechsucessImpl value,
          $Res Function(_$TexttospeechsucessImpl) then) =
      __$$TexttospeechsucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TexttospeechsucessImplCopyWithImpl<$Res>
    extends _$SpeechtotextStateCopyWithImpl<$Res, _$TexttospeechsucessImpl>
    implements _$$TexttospeechsucessImplCopyWith<$Res> {
  __$$TexttospeechsucessImplCopyWithImpl(_$TexttospeechsucessImpl _value,
      $Res Function(_$TexttospeechsucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TexttospeechsucessImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TexttospeechsucessImpl implements _Texttospeechsucess {
  const _$TexttospeechsucessImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SpeechtotextState.texttospeechsucess(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TexttospeechsucessImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TexttospeechsucessImplCopyWith<_$TexttospeechsucessImpl> get copyWith =>
      __$$TexttospeechsucessImplCopyWithImpl<_$TexttospeechsucessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) {
    return texttospeechsucess(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) {
    return texttospeechsucess?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
    required TResult orElse(),
  }) {
    if (texttospeechsucess != null) {
      return texttospeechsucess(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) {
    return texttospeechsucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) {
    return texttospeechsucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) {
    if (texttospeechsucess != null) {
      return texttospeechsucess(this);
    }
    return orElse();
  }
}

abstract class _Texttospeechsucess implements SpeechtotextState {
  const factory _Texttospeechsucess({required final String text}) =
      _$TexttospeechsucessImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$TexttospeechsucessImplCopyWith<_$TexttospeechsucessImpl> get copyWith =>
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
    extends _$SpeechtotextStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SpeechtotextState.error()';
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
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
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
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SpeechtotextState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$resetsucessImplCopyWith<$Res> {
  factory _$$resetsucessImplCopyWith(
          _$resetsucessImpl value, $Res Function(_$resetsucessImpl) then) =
      __$$resetsucessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$resetsucessImplCopyWithImpl<$Res>
    extends _$SpeechtotextStateCopyWithImpl<$Res, _$resetsucessImpl>
    implements _$$resetsucessImplCopyWith<$Res> {
  __$$resetsucessImplCopyWithImpl(
      _$resetsucessImpl _value, $Res Function(_$resetsucessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$resetsucessImpl implements _resetsucess {
  const _$resetsucessImpl();

  @override
  String toString() {
    return 'SpeechtotextState.resetsucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$resetsucessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String text) speechtotextsucess,
    required TResult Function(String text) texttospeechsucess,
    required TResult Function() error,
    required TResult Function() resetsucess,
  }) {
    return resetsucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String text)? speechtotextsucess,
    TResult? Function(String text)? texttospeechsucess,
    TResult? Function()? error,
    TResult? Function()? resetsucess,
  }) {
    return resetsucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String text)? speechtotextsucess,
    TResult Function(String text)? texttospeechsucess,
    TResult Function()? error,
    TResult Function()? resetsucess,
    required TResult orElse(),
  }) {
    if (resetsucess != null) {
      return resetsucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Speechtotextsucess value) speechtotextsucess,
    required TResult Function(_Texttospeechsucess value) texttospeechsucess,
    required TResult Function(_Error value) error,
    required TResult Function(_resetsucess value) resetsucess,
  }) {
    return resetsucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult? Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult? Function(_Error value)? error,
    TResult? Function(_resetsucess value)? resetsucess,
  }) {
    return resetsucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Speechtotextsucess value)? speechtotextsucess,
    TResult Function(_Texttospeechsucess value)? texttospeechsucess,
    TResult Function(_Error value)? error,
    TResult Function(_resetsucess value)? resetsucess,
    required TResult orElse(),
  }) {
    if (resetsucess != null) {
      return resetsucess(this);
    }
    return orElse();
  }
}

abstract class _resetsucess implements SpeechtotextState {
  const factory _resetsucess() = _$resetsucessImpl;
}
