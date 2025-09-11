// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webrtcspeak_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WebrtcspeakEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String imageurl) callavathar,
    required TResult Function(String talk, List<ChatMessage> data) talkstream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imageurl)? callavathar,
    TResult? Function(String talk, List<ChatMessage> data)? talkstream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imageurl)? callavathar,
    TResult Function(String talk, List<ChatMessage> data)? talkstream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Callavathar value) callavathar,
    required TResult Function(_Talkstream value) talkstream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Callavathar value)? callavathar,
    TResult? Function(_Talkstream value)? talkstream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Callavathar value)? callavathar,
    TResult Function(_Talkstream value)? talkstream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebrtcspeakEventCopyWith<$Res> {
  factory $WebrtcspeakEventCopyWith(
          WebrtcspeakEvent value, $Res Function(WebrtcspeakEvent) then) =
      _$WebrtcspeakEventCopyWithImpl<$Res, WebrtcspeakEvent>;
}

/// @nodoc
class _$WebrtcspeakEventCopyWithImpl<$Res, $Val extends WebrtcspeakEvent>
    implements $WebrtcspeakEventCopyWith<$Res> {
  _$WebrtcspeakEventCopyWithImpl(this._value, this._then);

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
    extends _$WebrtcspeakEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'WebrtcspeakEvent.started()';
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
    required TResult Function(String imageurl) callavathar,
    required TResult Function(String talk, List<ChatMessage> data) talkstream,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imageurl)? callavathar,
    TResult? Function(String talk, List<ChatMessage> data)? talkstream,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imageurl)? callavathar,
    TResult Function(String talk, List<ChatMessage> data)? talkstream,
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
    required TResult Function(_Callavathar value) callavathar,
    required TResult Function(_Talkstream value) talkstream,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Callavathar value)? callavathar,
    TResult? Function(_Talkstream value)? talkstream,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Callavathar value)? callavathar,
    TResult Function(_Talkstream value)? talkstream,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WebrtcspeakEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CallavatharImplCopyWith<$Res> {
  factory _$$CallavatharImplCopyWith(
          _$CallavatharImpl value, $Res Function(_$CallavatharImpl) then) =
      __$$CallavatharImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageurl});
}

/// @nodoc
class __$$CallavatharImplCopyWithImpl<$Res>
    extends _$WebrtcspeakEventCopyWithImpl<$Res, _$CallavatharImpl>
    implements _$$CallavatharImplCopyWith<$Res> {
  __$$CallavatharImplCopyWithImpl(
      _$CallavatharImpl _value, $Res Function(_$CallavatharImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = null,
  }) {
    return _then(_$CallavatharImpl(
      imageurl: null == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CallavatharImpl implements _Callavathar {
  const _$CallavatharImpl({required this.imageurl});

  @override
  final String imageurl;

  @override
  String toString() {
    return 'WebrtcspeakEvent.callavathar(imageurl: $imageurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallavatharImpl &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallavatharImplCopyWith<_$CallavatharImpl> get copyWith =>
      __$$CallavatharImplCopyWithImpl<_$CallavatharImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String imageurl) callavathar,
    required TResult Function(String talk, List<ChatMessage> data) talkstream,
  }) {
    return callavathar(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imageurl)? callavathar,
    TResult? Function(String talk, List<ChatMessage> data)? talkstream,
  }) {
    return callavathar?.call(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imageurl)? callavathar,
    TResult Function(String talk, List<ChatMessage> data)? talkstream,
    required TResult orElse(),
  }) {
    if (callavathar != null) {
      return callavathar(imageurl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Callavathar value) callavathar,
    required TResult Function(_Talkstream value) talkstream,
  }) {
    return callavathar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Callavathar value)? callavathar,
    TResult? Function(_Talkstream value)? talkstream,
  }) {
    return callavathar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Callavathar value)? callavathar,
    TResult Function(_Talkstream value)? talkstream,
    required TResult orElse(),
  }) {
    if (callavathar != null) {
      return callavathar(this);
    }
    return orElse();
  }
}

abstract class _Callavathar implements WebrtcspeakEvent {
  const factory _Callavathar({required final String imageurl}) =
      _$CallavatharImpl;

  String get imageurl;
  @JsonKey(ignore: true)
  _$$CallavatharImplCopyWith<_$CallavatharImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TalkstreamImplCopyWith<$Res> {
  factory _$$TalkstreamImplCopyWith(
          _$TalkstreamImpl value, $Res Function(_$TalkstreamImpl) then) =
      __$$TalkstreamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String talk, List<ChatMessage> data});
}

/// @nodoc
class __$$TalkstreamImplCopyWithImpl<$Res>
    extends _$WebrtcspeakEventCopyWithImpl<$Res, _$TalkstreamImpl>
    implements _$$TalkstreamImplCopyWith<$Res> {
  __$$TalkstreamImplCopyWithImpl(
      _$TalkstreamImpl _value, $Res Function(_$TalkstreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talk = null,
    Object? data = null,
  }) {
    return _then(_$TalkstreamImpl(
      talk: null == talk
          ? _value.talk
          : talk // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$TalkstreamImpl implements _Talkstream {
  const _$TalkstreamImpl(
      {required this.talk, required final List<ChatMessage> data})
      : _data = data;

  @override
  final String talk;
  final List<ChatMessage> _data;
  @override
  List<ChatMessage> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WebrtcspeakEvent.talkstream(talk: $talk, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalkstreamImpl &&
            (identical(other.talk, talk) || other.talk == talk) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, talk, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TalkstreamImplCopyWith<_$TalkstreamImpl> get copyWith =>
      __$$TalkstreamImplCopyWithImpl<_$TalkstreamImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String imageurl) callavathar,
    required TResult Function(String talk, List<ChatMessage> data) talkstream,
  }) {
    return talkstream(talk, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String imageurl)? callavathar,
    TResult? Function(String talk, List<ChatMessage> data)? talkstream,
  }) {
    return talkstream?.call(talk, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String imageurl)? callavathar,
    TResult Function(String talk, List<ChatMessage> data)? talkstream,
    required TResult orElse(),
  }) {
    if (talkstream != null) {
      return talkstream(talk, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Callavathar value) callavathar,
    required TResult Function(_Talkstream value) talkstream,
  }) {
    return talkstream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Callavathar value)? callavathar,
    TResult? Function(_Talkstream value)? talkstream,
  }) {
    return talkstream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Callavathar value)? callavathar,
    TResult Function(_Talkstream value)? talkstream,
    required TResult orElse(),
  }) {
    if (talkstream != null) {
      return talkstream(this);
    }
    return orElse();
  }
}

abstract class _Talkstream implements WebrtcspeakEvent {
  const factory _Talkstream(
      {required final String talk,
      required final List<ChatMessage> data}) = _$TalkstreamImpl;

  String get talk;
  List<ChatMessage> get data;
  @JsonKey(ignore: true)
  _$$TalkstreamImplCopyWith<_$TalkstreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WebrtcspeakState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebrtcspeakStateCopyWith<$Res> {
  factory $WebrtcspeakStateCopyWith(
          WebrtcspeakState value, $Res Function(WebrtcspeakState) then) =
      _$WebrtcspeakStateCopyWithImpl<$Res, WebrtcspeakState>;
}

/// @nodoc
class _$WebrtcspeakStateCopyWithImpl<$Res, $Val extends WebrtcspeakState>
    implements $WebrtcspeakStateCopyWith<$Res> {
  _$WebrtcspeakStateCopyWithImpl(this._value, this._then);

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
    extends _$WebrtcspeakStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'WebrtcspeakState.initial()';
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
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
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
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WebrtcspeakState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SucessnewStreamImplCopyWith<$Res> {
  factory _$$SucessnewStreamImplCopyWith(_$SucessnewStreamImpl value,
          $Res Function(_$SucessnewStreamImpl) then) =
      __$$SucessnewStreamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MediaStream> streams, String? streamId, String? sessionId});
}

/// @nodoc
class __$$SucessnewStreamImplCopyWithImpl<$Res>
    extends _$WebrtcspeakStateCopyWithImpl<$Res, _$SucessnewStreamImpl>
    implements _$$SucessnewStreamImplCopyWith<$Res> {
  __$$SucessnewStreamImplCopyWithImpl(
      _$SucessnewStreamImpl _value, $Res Function(_$SucessnewStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streams = null,
    Object? streamId = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$SucessnewStreamImpl(
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<MediaStream>,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SucessnewStreamImpl implements _SucessnewStream {
  const _$SucessnewStreamImpl(
      {required final List<MediaStream> streams,
      required this.streamId,
      required this.sessionId})
      : _streams = streams;

  final List<MediaStream> _streams;
  @override
  List<MediaStream> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

  @override
  final String? streamId;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'WebrtcspeakState.sucessnewStream(streams: $streams, streamId: $streamId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucessnewStreamImpl &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_streams), streamId, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SucessnewStreamImplCopyWith<_$SucessnewStreamImpl> get copyWith =>
      __$$SucessnewStreamImplCopyWithImpl<_$SucessnewStreamImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) {
    return sucessnewStream(streams, streamId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) {
    return sucessnewStream?.call(streams, streamId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
    required TResult orElse(),
  }) {
    if (sucessnewStream != null) {
      return sucessnewStream(streams, streamId, sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) {
    return sucessnewStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) {
    return sucessnewStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) {
    if (sucessnewStream != null) {
      return sucessnewStream(this);
    }
    return orElse();
  }
}

abstract class _SucessnewStream implements WebrtcspeakState {
  const factory _SucessnewStream(
      {required final List<MediaStream> streams,
      required final String? streamId,
      required final String? sessionId}) = _$SucessnewStreamImpl;

  List<MediaStream> get streams;
  String? get streamId;
  String? get sessionId;
  @JsonKey(ignore: true)
  _$$SucessnewStreamImplCopyWith<_$SucessnewStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessstreamImplCopyWith<$Res> {
  factory _$$SuccessstreamImplCopyWith(
          _$SuccessstreamImpl value, $Res Function(_$SuccessstreamImpl) then) =
      __$$SuccessstreamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? streamId, String? sessionId});
}

/// @nodoc
class __$$SuccessstreamImplCopyWithImpl<$Res>
    extends _$WebrtcspeakStateCopyWithImpl<$Res, _$SuccessstreamImpl>
    implements _$$SuccessstreamImplCopyWith<$Res> {
  __$$SuccessstreamImplCopyWithImpl(
      _$SuccessstreamImpl _value, $Res Function(_$SuccessstreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$SuccessstreamImpl(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessstreamImpl implements _Successstream {
  const _$SuccessstreamImpl({required this.streamId, required this.sessionId});

  @override
  final String? streamId;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'WebrtcspeakState.successstream(streamId: $streamId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessstreamImpl &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, streamId, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessstreamImplCopyWith<_$SuccessstreamImpl> get copyWith =>
      __$$SuccessstreamImplCopyWithImpl<_$SuccessstreamImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) {
    return successstream(streamId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) {
    return successstream?.call(streamId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
    required TResult orElse(),
  }) {
    if (successstream != null) {
      return successstream(streamId, sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) {
    return successstream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) {
    return successstream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) {
    if (successstream != null) {
      return successstream(this);
    }
    return orElse();
  }
}

abstract class _Successstream implements WebrtcspeakState {
  const factory _Successstream(
      {required final String? streamId,
      required final String? sessionId}) = _$SuccessstreamImpl;

  String? get streamId;
  String? get sessionId;
  @JsonKey(ignore: true)
  _$$SuccessstreamImplCopyWith<_$SuccessstreamImpl> get copyWith =>
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
    extends _$WebrtcspeakStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'WebrtcspeakState.error()';
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
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
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
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WebrtcspeakState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$chatsucessImplCopyWith<$Res> {
  factory _$$chatsucessImplCopyWith(
          _$chatsucessImpl value, $Res Function(_$chatsucessImpl) then) =
      __$$chatsucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> data});
}

/// @nodoc
class __$$chatsucessImplCopyWithImpl<$Res>
    extends _$WebrtcspeakStateCopyWithImpl<$Res, _$chatsucessImpl>
    implements _$$chatsucessImplCopyWith<$Res> {
  __$$chatsucessImplCopyWithImpl(
      _$chatsucessImpl _value, $Res Function(_$chatsucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$chatsucessImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$chatsucessImpl implements _chatsucess {
  const _$chatsucessImpl({required final List<ChatMessage> data})
      : _data = data;

  final List<ChatMessage> _data;
  @override
  List<ChatMessage> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WebrtcspeakState.chatsucess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatsucessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$chatsucessImplCopyWith<_$chatsucessImpl> get copyWith =>
      __$$chatsucessImplCopyWithImpl<_$chatsucessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)
        sucessnewStream,
    required TResult Function(String? streamId, String? sessionId)
        successstream,
    required TResult Function() error,
    required TResult Function(List<ChatMessage> data) chatsucess,
  }) {
    return chatsucess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult? Function(String? streamId, String? sessionId)? successstream,
    TResult? Function()? error,
    TResult? Function(List<ChatMessage> data)? chatsucess,
  }) {
    return chatsucess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<MediaStream> streams, String? streamId, String? sessionId)?
        sucessnewStream,
    TResult Function(String? streamId, String? sessionId)? successstream,
    TResult Function()? error,
    TResult Function(List<ChatMessage> data)? chatsucess,
    required TResult orElse(),
  }) {
    if (chatsucess != null) {
      return chatsucess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SucessnewStream value) sucessnewStream,
    required TResult Function(_Successstream value) successstream,
    required TResult Function(_Error value) error,
    required TResult Function(_chatsucess value) chatsucess,
  }) {
    return chatsucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SucessnewStream value)? sucessnewStream,
    TResult? Function(_Successstream value)? successstream,
    TResult? Function(_Error value)? error,
    TResult? Function(_chatsucess value)? chatsucess,
  }) {
    return chatsucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SucessnewStream value)? sucessnewStream,
    TResult Function(_Successstream value)? successstream,
    TResult Function(_Error value)? error,
    TResult Function(_chatsucess value)? chatsucess,
    required TResult orElse(),
  }) {
    if (chatsucess != null) {
      return chatsucess(this);
    }
    return orElse();
  }
}

abstract class _chatsucess implements WebrtcspeakState {
  const factory _chatsucess({required final List<ChatMessage> data}) =
      _$chatsucessImpl;

  List<ChatMessage> get data;
  @JsonKey(ignore: true)
  _$$chatsucessImplCopyWith<_$chatsucessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
