// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatcompletion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatcompletionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ChatMessage> data) chatstart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ChatMessage> data)? chatstart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ChatMessage> data)? chatstart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Chatstart value) chatstart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Chatstart value)? chatstart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Chatstart value)? chatstart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatcompletionEventCopyWith<$Res> {
  factory $ChatcompletionEventCopyWith(
          ChatcompletionEvent value, $Res Function(ChatcompletionEvent) then) =
      _$ChatcompletionEventCopyWithImpl<$Res, ChatcompletionEvent>;
}

/// @nodoc
class _$ChatcompletionEventCopyWithImpl<$Res, $Val extends ChatcompletionEvent>
    implements $ChatcompletionEventCopyWith<$Res> {
  _$ChatcompletionEventCopyWithImpl(this._value, this._then);

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
    extends _$ChatcompletionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ChatcompletionEvent.started()';
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
    required TResult Function(List<ChatMessage> data) chatstart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ChatMessage> data)? chatstart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ChatMessage> data)? chatstart,
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
    required TResult Function(_Chatstart value) chatstart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Chatstart value)? chatstart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Chatstart value)? chatstart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatcompletionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChatstartImplCopyWith<$Res> {
  factory _$$ChatstartImplCopyWith(
          _$ChatstartImpl value, $Res Function(_$ChatstartImpl) then) =
      __$$ChatstartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> data});
}

/// @nodoc
class __$$ChatstartImplCopyWithImpl<$Res>
    extends _$ChatcompletionEventCopyWithImpl<$Res, _$ChatstartImpl>
    implements _$$ChatstartImplCopyWith<$Res> {
  __$$ChatstartImplCopyWithImpl(
      _$ChatstartImpl _value, $Res Function(_$ChatstartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChatstartImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$ChatstartImpl implements _Chatstart {
  const _$ChatstartImpl({required final List<ChatMessage> data}) : _data = data;

  final List<ChatMessage> _data;
  @override
  List<ChatMessage> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChatcompletionEvent.chatstart(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatstartImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatstartImplCopyWith<_$ChatstartImpl> get copyWith =>
      __$$ChatstartImplCopyWithImpl<_$ChatstartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ChatMessage> data) chatstart,
  }) {
    return chatstart(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ChatMessage> data)? chatstart,
  }) {
    return chatstart?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ChatMessage> data)? chatstart,
    required TResult orElse(),
  }) {
    if (chatstart != null) {
      return chatstart(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Chatstart value) chatstart,
  }) {
    return chatstart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Chatstart value)? chatstart,
  }) {
    return chatstart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Chatstart value)? chatstart,
    required TResult orElse(),
  }) {
    if (chatstart != null) {
      return chatstart(this);
    }
    return orElse();
  }
}

abstract class _Chatstart implements ChatcompletionEvent {
  const factory _Chatstart({required final List<ChatMessage> data}) =
      _$ChatstartImpl;

  List<ChatMessage> get data;
  @JsonKey(ignore: true)
  _$$ChatstartImplCopyWith<_$ChatstartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatcompletionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data) chatsuuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data)? chatsuuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data)? chatsuuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_chatsuuccess value) chatsuuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_chatsuuccess value)? chatsuuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_chatsuuccess value)? chatsuuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatcompletionStateCopyWith<$Res> {
  factory $ChatcompletionStateCopyWith(
          ChatcompletionState value, $Res Function(ChatcompletionState) then) =
      _$ChatcompletionStateCopyWithImpl<$Res, ChatcompletionState>;
}

/// @nodoc
class _$ChatcompletionStateCopyWithImpl<$Res, $Val extends ChatcompletionState>
    implements $ChatcompletionStateCopyWith<$Res> {
  _$ChatcompletionStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatcompletionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChatcompletionState.initial()';
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
    required TResult Function(List<ChatMessage> data) chatsuuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data)? chatsuuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data)? chatsuuccess,
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
    required TResult Function(_chatsuuccess value) chatsuuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_chatsuuccess value)? chatsuuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_chatsuuccess value)? chatsuuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatcompletionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$chatsuuccessImplCopyWith<$Res> {
  factory _$$chatsuuccessImplCopyWith(
          _$chatsuuccessImpl value, $Res Function(_$chatsuuccessImpl) then) =
      __$$chatsuuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> data});
}

/// @nodoc
class __$$chatsuuccessImplCopyWithImpl<$Res>
    extends _$ChatcompletionStateCopyWithImpl<$Res, _$chatsuuccessImpl>
    implements _$$chatsuuccessImplCopyWith<$Res> {
  __$$chatsuuccessImplCopyWithImpl(
      _$chatsuuccessImpl _value, $Res Function(_$chatsuuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$chatsuuccessImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$chatsuuccessImpl implements _chatsuuccess {
  const _$chatsuuccessImpl({required final List<ChatMessage> data})
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
    return 'ChatcompletionState.chatsuuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatsuuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$chatsuuccessImplCopyWith<_$chatsuuccessImpl> get copyWith =>
      __$$chatsuuccessImplCopyWithImpl<_$chatsuuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ChatMessage> data) chatsuuccess,
  }) {
    return chatsuuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ChatMessage> data)? chatsuuccess,
  }) {
    return chatsuuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ChatMessage> data)? chatsuuccess,
    required TResult orElse(),
  }) {
    if (chatsuuccess != null) {
      return chatsuuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_chatsuuccess value) chatsuuccess,
  }) {
    return chatsuuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_chatsuuccess value)? chatsuuccess,
  }) {
    return chatsuuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_chatsuuccess value)? chatsuuccess,
    required TResult orElse(),
  }) {
    if (chatsuuccess != null) {
      return chatsuuccess(this);
    }
    return orElse();
  }
}

abstract class _chatsuuccess implements ChatcompletionState {
  const factory _chatsuuccess({required final List<ChatMessage> data}) =
      _$chatsuuccessImpl;

  List<ChatMessage> get data;
  @JsonKey(ignore: true)
  _$$chatsuuccessImplCopyWith<_$chatsuuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
