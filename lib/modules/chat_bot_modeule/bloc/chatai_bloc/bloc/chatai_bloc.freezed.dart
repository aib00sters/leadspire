// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChataiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid,
            String question, String imagepath, String filetype)
        startchat,
    required TResult Function(Historymodel data) chathistory,
    required TResult Function() clearchat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult? Function(Historymodel data)? chathistory,
    TResult? Function()? clearchat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult Function(Historymodel data)? chathistory,
    TResult Function()? clearchat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Startchat value) startchat,
    required TResult Function(_chathistory value) chathistory,
    required TResult Function(_clearchat value) clearchat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Startchat value)? startchat,
    TResult? Function(_chathistory value)? chathistory,
    TResult? Function(_clearchat value)? clearchat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Startchat value)? startchat,
    TResult Function(_chathistory value)? chathistory,
    TResult Function(_clearchat value)? clearchat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChataiEventCopyWith<$Res> {
  factory $ChataiEventCopyWith(
          ChataiEvent value, $Res Function(ChataiEvent) then) =
      _$ChataiEventCopyWithImpl<$Res, ChataiEvent>;
}

/// @nodoc
class _$ChataiEventCopyWithImpl<$Res, $Val extends ChataiEvent>
    implements $ChataiEventCopyWith<$Res> {
  _$ChataiEventCopyWithImpl(this._value, this._then);

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
    extends _$ChataiEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ChataiEvent.started()';
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
    required TResult Function(String? assistantid, String? sessionid,
            String question, String imagepath, String filetype)
        startchat,
    required TResult Function(Historymodel data) chathistory,
    required TResult Function() clearchat,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult? Function(Historymodel data)? chathistory,
    TResult? Function()? clearchat,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult Function(Historymodel data)? chathistory,
    TResult Function()? clearchat,
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
    required TResult Function(_Startchat value) startchat,
    required TResult Function(_chathistory value) chathistory,
    required TResult Function(_clearchat value) clearchat,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Startchat value)? startchat,
    TResult? Function(_chathistory value)? chathistory,
    TResult? Function(_clearchat value)? clearchat,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Startchat value)? startchat,
    TResult Function(_chathistory value)? chathistory,
    TResult Function(_clearchat value)? clearchat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChataiEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartchatImplCopyWith<$Res> {
  factory _$$StartchatImplCopyWith(
          _$StartchatImpl value, $Res Function(_$StartchatImpl) then) =
      __$$StartchatImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? assistantid,
      String? sessionid,
      String question,
      String imagepath,
      String filetype});
}

/// @nodoc
class __$$StartchatImplCopyWithImpl<$Res>
    extends _$ChataiEventCopyWithImpl<$Res, _$StartchatImpl>
    implements _$$StartchatImplCopyWith<$Res> {
  __$$StartchatImplCopyWithImpl(
      _$StartchatImpl _value, $Res Function(_$StartchatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistantid = freezed,
    Object? sessionid = freezed,
    Object? question = null,
    Object? imagepath = null,
    Object? filetype = null,
  }) {
    return _then(_$StartchatImpl(
      assistantid: freezed == assistantid
          ? _value.assistantid
          : assistantid // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionid: freezed == sessionid
          ? _value.sessionid
          : sessionid // ignore: cast_nullable_to_non_nullable
              as String?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
      filetype: null == filetype
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartchatImpl implements _Startchat {
  const _$StartchatImpl(
      {this.assistantid,
      required this.sessionid,
      required this.question,
      required this.imagepath,
      required this.filetype});

  @override
  final String? assistantid;
  @override
  final String? sessionid;
  @override
  final String question;
  @override
  final String imagepath;
  @override
  final String filetype;

  @override
  String toString() {
    return 'ChataiEvent.startchat(assistantid: $assistantid, sessionid: $sessionid, question: $question, imagepath: $imagepath, filetype: $filetype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartchatImpl &&
            (identical(other.assistantid, assistantid) ||
                other.assistantid == assistantid) &&
            (identical(other.sessionid, sessionid) ||
                other.sessionid == sessionid) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.imagepath, imagepath) ||
                other.imagepath == imagepath) &&
            (identical(other.filetype, filetype) ||
                other.filetype == filetype));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, assistantid, sessionid, question, imagepath, filetype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartchatImplCopyWith<_$StartchatImpl> get copyWith =>
      __$$StartchatImplCopyWithImpl<_$StartchatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid,
            String question, String imagepath, String filetype)
        startchat,
    required TResult Function(Historymodel data) chathistory,
    required TResult Function() clearchat,
  }) {
    return startchat(assistantid, sessionid, question, imagepath, filetype);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult? Function(Historymodel data)? chathistory,
    TResult? Function()? clearchat,
  }) {
    return startchat?.call(
        assistantid, sessionid, question, imagepath, filetype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult Function(Historymodel data)? chathistory,
    TResult Function()? clearchat,
    required TResult orElse(),
  }) {
    if (startchat != null) {
      return startchat(assistantid, sessionid, question, imagepath, filetype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Startchat value) startchat,
    required TResult Function(_chathistory value) chathistory,
    required TResult Function(_clearchat value) clearchat,
  }) {
    return startchat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Startchat value)? startchat,
    TResult? Function(_chathistory value)? chathistory,
    TResult? Function(_clearchat value)? clearchat,
  }) {
    return startchat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Startchat value)? startchat,
    TResult Function(_chathistory value)? chathistory,
    TResult Function(_clearchat value)? clearchat,
    required TResult orElse(),
  }) {
    if (startchat != null) {
      return startchat(this);
    }
    return orElse();
  }
}

abstract class _Startchat implements ChataiEvent {
  const factory _Startchat(
      {final String? assistantid,
      required final String? sessionid,
      required final String question,
      required final String imagepath,
      required final String filetype}) = _$StartchatImpl;

  String? get assistantid;
  String? get sessionid;
  String get question;
  String get imagepath;
  String get filetype;
  @JsonKey(ignore: true)
  _$$StartchatImplCopyWith<_$StartchatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$chathistoryImplCopyWith<$Res> {
  factory _$$chathistoryImplCopyWith(
          _$chathistoryImpl value, $Res Function(_$chathistoryImpl) then) =
      __$$chathistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Historymodel data});
}

/// @nodoc
class __$$chathistoryImplCopyWithImpl<$Res>
    extends _$ChataiEventCopyWithImpl<$Res, _$chathistoryImpl>
    implements _$$chathistoryImplCopyWith<$Res> {
  __$$chathistoryImplCopyWithImpl(
      _$chathistoryImpl _value, $Res Function(_$chathistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$chathistoryImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Historymodel,
    ));
  }
}

/// @nodoc

class _$chathistoryImpl implements _chathistory {
  const _$chathistoryImpl({required this.data});

  @override
  final Historymodel data;

  @override
  String toString() {
    return 'ChataiEvent.chathistory(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chathistoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$chathistoryImplCopyWith<_$chathistoryImpl> get copyWith =>
      __$$chathistoryImplCopyWithImpl<_$chathistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid,
            String question, String imagepath, String filetype)
        startchat,
    required TResult Function(Historymodel data) chathistory,
    required TResult Function() clearchat,
  }) {
    return chathistory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult? Function(Historymodel data)? chathistory,
    TResult? Function()? clearchat,
  }) {
    return chathistory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult Function(Historymodel data)? chathistory,
    TResult Function()? clearchat,
    required TResult orElse(),
  }) {
    if (chathistory != null) {
      return chathistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Startchat value) startchat,
    required TResult Function(_chathistory value) chathistory,
    required TResult Function(_clearchat value) clearchat,
  }) {
    return chathistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Startchat value)? startchat,
    TResult? Function(_chathistory value)? chathistory,
    TResult? Function(_clearchat value)? clearchat,
  }) {
    return chathistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Startchat value)? startchat,
    TResult Function(_chathistory value)? chathistory,
    TResult Function(_clearchat value)? clearchat,
    required TResult orElse(),
  }) {
    if (chathistory != null) {
      return chathistory(this);
    }
    return orElse();
  }
}

abstract class _chathistory implements ChataiEvent {
  const factory _chathistory({required final Historymodel data}) =
      _$chathistoryImpl;

  Historymodel get data;
  @JsonKey(ignore: true)
  _$$chathistoryImplCopyWith<_$chathistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearchatImplCopyWith<$Res> {
  factory _$$clearchatImplCopyWith(
          _$clearchatImpl value, $Res Function(_$clearchatImpl) then) =
      __$$clearchatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearchatImplCopyWithImpl<$Res>
    extends _$ChataiEventCopyWithImpl<$Res, _$clearchatImpl>
    implements _$$clearchatImplCopyWith<$Res> {
  __$$clearchatImplCopyWithImpl(
      _$clearchatImpl _value, $Res Function(_$clearchatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$clearchatImpl implements _clearchat {
  const _$clearchatImpl();

  @override
  String toString() {
    return 'ChataiEvent.clearchat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clearchatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? assistantid, String? sessionid,
            String question, String imagepath, String filetype)
        startchat,
    required TResult Function(Historymodel data) chathistory,
    required TResult Function() clearchat,
  }) {
    return clearchat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult? Function(Historymodel data)? chathistory,
    TResult? Function()? clearchat,
  }) {
    return clearchat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? assistantid, String? sessionid, String question,
            String imagepath, String filetype)?
        startchat,
    TResult Function(Historymodel data)? chathistory,
    TResult Function()? clearchat,
    required TResult orElse(),
  }) {
    if (clearchat != null) {
      return clearchat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Startchat value) startchat,
    required TResult Function(_chathistory value) chathistory,
    required TResult Function(_clearchat value) clearchat,
  }) {
    return clearchat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Startchat value)? startchat,
    TResult? Function(_chathistory value)? chathistory,
    TResult? Function(_clearchat value)? clearchat,
  }) {
    return clearchat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Startchat value)? startchat,
    TResult Function(_chathistory value)? chathistory,
    TResult Function(_clearchat value)? clearchat,
    required TResult orElse(),
  }) {
    if (clearchat != null) {
      return clearchat(this);
    }
    return orElse();
  }
}

abstract class _clearchat implements ChataiEvent {
  const factory _clearchat() = _$clearchatImpl;
}

/// @nodoc
mixin _$ChataiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data, String message)
        chatSuccess,
    required TResult Function() chatError,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult? Function()? chatError,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult Function()? chatError,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatSuccess value) chatSuccess,
    required TResult Function(_ChatError value) chatError,
    required TResult Function(_loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatSuccess value)? chatSuccess,
    TResult? Function(_ChatError value)? chatError,
    TResult? Function(_loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatSuccess value)? chatSuccess,
    TResult Function(_ChatError value)? chatError,
    TResult Function(_loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChataiStateCopyWith<$Res> {
  factory $ChataiStateCopyWith(
          ChataiState value, $Res Function(ChataiState) then) =
      _$ChataiStateCopyWithImpl<$Res, ChataiState>;
}

/// @nodoc
class _$ChataiStateCopyWithImpl<$Res, $Val extends ChataiState>
    implements $ChataiStateCopyWith<$Res> {
  _$ChataiStateCopyWithImpl(this._value, this._then);

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
    extends _$ChataiStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChataiState.initial()';
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
    required TResult Function(List<ChatMessage> data, String message)
        chatSuccess,
    required TResult Function() chatError,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult? Function()? chatError,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult Function()? chatError,
    TResult Function()? loading,
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
    required TResult Function(_ChatSuccess value) chatSuccess,
    required TResult Function(_ChatError value) chatError,
    required TResult Function(_loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatSuccess value)? chatSuccess,
    TResult? Function(_ChatError value)? chatError,
    TResult? Function(_loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatSuccess value)? chatSuccess,
    TResult Function(_ChatError value)? chatError,
    TResult Function(_loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChataiState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChatSuccessImplCopyWith<$Res> {
  factory _$$ChatSuccessImplCopyWith(
          _$ChatSuccessImpl value, $Res Function(_$ChatSuccessImpl) then) =
      __$$ChatSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> data, String message});
}

/// @nodoc
class __$$ChatSuccessImplCopyWithImpl<$Res>
    extends _$ChataiStateCopyWithImpl<$Res, _$ChatSuccessImpl>
    implements _$$ChatSuccessImplCopyWith<$Res> {
  __$$ChatSuccessImplCopyWithImpl(
      _$ChatSuccessImpl _value, $Res Function(_$ChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ChatSuccessImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatSuccessImpl implements _ChatSuccess {
  const _$ChatSuccessImpl(
      {required final List<ChatMessage> data, required this.message})
      : _data = data;

  final List<ChatMessage> _data;
  @override
  List<ChatMessage> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'ChataiState.chatSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSuccessImplCopyWith<_$ChatSuccessImpl> get copyWith =>
      __$$ChatSuccessImplCopyWithImpl<_$ChatSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data, String message)
        chatSuccess,
    required TResult Function() chatError,
    required TResult Function() loading,
  }) {
    return chatSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult? Function()? chatError,
    TResult? Function()? loading,
  }) {
    return chatSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult Function()? chatError,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (chatSuccess != null) {
      return chatSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatSuccess value) chatSuccess,
    required TResult Function(_ChatError value) chatError,
    required TResult Function(_loading value) loading,
  }) {
    return chatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatSuccess value)? chatSuccess,
    TResult? Function(_ChatError value)? chatError,
    TResult? Function(_loading value)? loading,
  }) {
    return chatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatSuccess value)? chatSuccess,
    TResult Function(_ChatError value)? chatError,
    TResult Function(_loading value)? loading,
    required TResult orElse(),
  }) {
    if (chatSuccess != null) {
      return chatSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChatSuccess implements ChataiState {
  const factory _ChatSuccess(
      {required final List<ChatMessage> data,
      required final String message}) = _$ChatSuccessImpl;

  List<ChatMessage> get data;
  String get message;
  @JsonKey(ignore: true)
  _$$ChatSuccessImplCopyWith<_$ChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatErrorImplCopyWith<$Res> {
  factory _$$ChatErrorImplCopyWith(
          _$ChatErrorImpl value, $Res Function(_$ChatErrorImpl) then) =
      __$$ChatErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatErrorImplCopyWithImpl<$Res>
    extends _$ChataiStateCopyWithImpl<$Res, _$ChatErrorImpl>
    implements _$$ChatErrorImplCopyWith<$Res> {
  __$$ChatErrorImplCopyWithImpl(
      _$ChatErrorImpl _value, $Res Function(_$ChatErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatErrorImpl implements _ChatError {
  const _$ChatErrorImpl();

  @override
  String toString() {
    return 'ChataiState.chatError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data, String message)
        chatSuccess,
    required TResult Function() chatError,
    required TResult Function() loading,
  }) {
    return chatError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult? Function()? chatError,
    TResult? Function()? loading,
  }) {
    return chatError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult Function()? chatError,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (chatError != null) {
      return chatError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatSuccess value) chatSuccess,
    required TResult Function(_ChatError value) chatError,
    required TResult Function(_loading value) loading,
  }) {
    return chatError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatSuccess value)? chatSuccess,
    TResult? Function(_ChatError value)? chatError,
    TResult? Function(_loading value)? loading,
  }) {
    return chatError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatSuccess value)? chatSuccess,
    TResult Function(_ChatError value)? chatError,
    TResult Function(_loading value)? loading,
    required TResult orElse(),
  }) {
    if (chatError != null) {
      return chatError(this);
    }
    return orElse();
  }
}

abstract class _ChatError implements ChataiState {
  const factory _ChatError() = _$ChatErrorImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$ChataiStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'ChataiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data, String message)
        chatSuccess,
    required TResult Function() chatError,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult? Function()? chatError,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data, String message)? chatSuccess,
    TResult Function()? chatError,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatSuccess value) chatSuccess,
    required TResult Function(_ChatError value) chatError,
    required TResult Function(_loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatSuccess value)? chatSuccess,
    TResult? Function(_ChatError value)? chatError,
    TResult? Function(_loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatSuccess value)? chatSuccess,
    TResult Function(_ChatError value)? chatError,
    TResult Function(_loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements ChataiState {
  const factory _loading() = _$loadingImpl;
}
