// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backgroundimagepick_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackgroundimagepickEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedimage) selectimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedimage)? selectimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedimage)? selectimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_selectimage value) selectimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundimagepickEventCopyWith<$Res> {
  factory $BackgroundimagepickEventCopyWith(BackgroundimagepickEvent value,
          $Res Function(BackgroundimagepickEvent) then) =
      _$BackgroundimagepickEventCopyWithImpl<$Res, BackgroundimagepickEvent>;
}

/// @nodoc
class _$BackgroundimagepickEventCopyWithImpl<$Res,
        $Val extends BackgroundimagepickEvent>
    implements $BackgroundimagepickEventCopyWith<$Res> {
  _$BackgroundimagepickEventCopyWithImpl(this._value, this._then);

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
    extends _$BackgroundimagepickEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'BackgroundimagepickEvent.started()';
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
    required TResult Function(String selectedimage) selectimage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedimage)? selectimage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedimage)? selectimage,
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
    required TResult Function(_selectimage value) selectimage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BackgroundimagepickEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$selectimageImplCopyWith<$Res> {
  factory _$$selectimageImplCopyWith(
          _$selectimageImpl value, $Res Function(_$selectimageImpl) then) =
      __$$selectimageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedimage});
}

/// @nodoc
class __$$selectimageImplCopyWithImpl<$Res>
    extends _$BackgroundimagepickEventCopyWithImpl<$Res, _$selectimageImpl>
    implements _$$selectimageImplCopyWith<$Res> {
  __$$selectimageImplCopyWithImpl(
      _$selectimageImpl _value, $Res Function(_$selectimageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedimage = null,
  }) {
    return _then(_$selectimageImpl(
      selectedimage: null == selectedimage
          ? _value.selectedimage
          : selectedimage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$selectimageImpl implements _selectimage {
  const _$selectimageImpl({required this.selectedimage});

  @override
  final String selectedimage;

  @override
  String toString() {
    return 'BackgroundimagepickEvent.selectimage(selectedimage: $selectedimage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectimageImpl &&
            (identical(other.selectedimage, selectedimage) ||
                other.selectedimage == selectedimage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedimage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectimageImplCopyWith<_$selectimageImpl> get copyWith =>
      __$$selectimageImplCopyWithImpl<_$selectimageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String selectedimage) selectimage,
  }) {
    return selectimage(selectedimage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String selectedimage)? selectimage,
  }) {
    return selectimage?.call(selectedimage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String selectedimage)? selectimage,
    required TResult orElse(),
  }) {
    if (selectimage != null) {
      return selectimage(selectedimage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_selectimage value) selectimage,
  }) {
    return selectimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_selectimage value)? selectimage,
  }) {
    return selectimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_selectimage value)? selectimage,
    required TResult orElse(),
  }) {
    if (selectimage != null) {
      return selectimage(this);
    }
    return orElse();
  }
}

abstract class _selectimage implements BackgroundimagepickEvent {
  const factory _selectimage({required final String selectedimage}) =
      _$selectimageImpl;

  String get selectedimage;
  @JsonKey(ignore: true)
  _$$selectimageImplCopyWith<_$selectimageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BackgroundimagepickState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstimage) initial,
    required TResult Function(String selectedimage) pickedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstimage)? initial,
    TResult? Function(String selectedimage)? pickedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstimage)? initial,
    TResult Function(String selectedimage)? pickedimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_pickedimage value) pickedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_pickedimage value)? pickedimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_pickedimage value)? pickedimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundimagepickStateCopyWith<$Res> {
  factory $BackgroundimagepickStateCopyWith(BackgroundimagepickState value,
          $Res Function(BackgroundimagepickState) then) =
      _$BackgroundimagepickStateCopyWithImpl<$Res, BackgroundimagepickState>;
}

/// @nodoc
class _$BackgroundimagepickStateCopyWithImpl<$Res,
        $Val extends BackgroundimagepickState>
    implements $BackgroundimagepickStateCopyWith<$Res> {
  _$BackgroundimagepickStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String firstimage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BackgroundimagepickStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstimage = null,
  }) {
    return _then(_$InitialImpl(
      firstimage: null == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.firstimage});

  @override
  final String firstimage;

  @override
  String toString() {
    return 'BackgroundimagepickState.initial(firstimage: $firstimage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.firstimage, firstimage) ||
                other.firstimage == firstimage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstimage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstimage) initial,
    required TResult Function(String selectedimage) pickedimage,
  }) {
    return initial(firstimage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstimage)? initial,
    TResult? Function(String selectedimage)? pickedimage,
  }) {
    return initial?.call(firstimage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstimage)? initial,
    TResult Function(String selectedimage)? pickedimage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(firstimage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_pickedimage value) pickedimage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_pickedimage value)? pickedimage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_pickedimage value)? pickedimage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BackgroundimagepickState {
  const factory _Initial({required final String firstimage}) = _$InitialImpl;

  String get firstimage;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$pickedimageImplCopyWith<$Res> {
  factory _$$pickedimageImplCopyWith(
          _$pickedimageImpl value, $Res Function(_$pickedimageImpl) then) =
      __$$pickedimageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedimage});
}

/// @nodoc
class __$$pickedimageImplCopyWithImpl<$Res>
    extends _$BackgroundimagepickStateCopyWithImpl<$Res, _$pickedimageImpl>
    implements _$$pickedimageImplCopyWith<$Res> {
  __$$pickedimageImplCopyWithImpl(
      _$pickedimageImpl _value, $Res Function(_$pickedimageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedimage = null,
  }) {
    return _then(_$pickedimageImpl(
      selectedimage: null == selectedimage
          ? _value.selectedimage
          : selectedimage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$pickedimageImpl implements _pickedimage {
  const _$pickedimageImpl({required this.selectedimage});

  @override
  final String selectedimage;

  @override
  String toString() {
    return 'BackgroundimagepickState.pickedimage(selectedimage: $selectedimage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$pickedimageImpl &&
            (identical(other.selectedimage, selectedimage) ||
                other.selectedimage == selectedimage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedimage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$pickedimageImplCopyWith<_$pickedimageImpl> get copyWith =>
      __$$pickedimageImplCopyWithImpl<_$pickedimageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstimage) initial,
    required TResult Function(String selectedimage) pickedimage,
  }) {
    return pickedimage(selectedimage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstimage)? initial,
    TResult? Function(String selectedimage)? pickedimage,
  }) {
    return pickedimage?.call(selectedimage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstimage)? initial,
    TResult Function(String selectedimage)? pickedimage,
    required TResult orElse(),
  }) {
    if (pickedimage != null) {
      return pickedimage(selectedimage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_pickedimage value) pickedimage,
  }) {
    return pickedimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_pickedimage value)? pickedimage,
  }) {
    return pickedimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_pickedimage value)? pickedimage,
    required TResult orElse(),
  }) {
    if (pickedimage != null) {
      return pickedimage(this);
    }
    return orElse();
  }
}

abstract class _pickedimage implements BackgroundimagepickState {
  const factory _pickedimage({required final String selectedimage}) =
      _$pickedimageImpl;

  String get selectedimage;
  @JsonKey(ignore: true)
  _$$pickedimageImplCopyWith<_$pickedimageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
