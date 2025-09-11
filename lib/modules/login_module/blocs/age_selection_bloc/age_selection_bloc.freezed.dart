// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgeSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAgeGroup,
    required TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)
        selectageGroup,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAgeGroup,
    TResult? Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAgeGroup,
    TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAgeGroup value) fetchAgeGroup,
    required TResult Function(_SelectageGroup value) selectageGroup,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult? Function(_SelectageGroup value)? selectageGroup,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult Function(_SelectageGroup value)? selectageGroup,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeSelectionEventCopyWith<$Res> {
  factory $AgeSelectionEventCopyWith(
          AgeSelectionEvent value, $Res Function(AgeSelectionEvent) then) =
      _$AgeSelectionEventCopyWithImpl<$Res, AgeSelectionEvent>;
}

/// @nodoc
class _$AgeSelectionEventCopyWithImpl<$Res, $Val extends AgeSelectionEvent>
    implements $AgeSelectionEventCopyWith<$Res> {
  _$AgeSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAgeGroupImplCopyWith<$Res> {
  factory _$$FetchAgeGroupImplCopyWith(
          _$FetchAgeGroupImpl value, $Res Function(_$FetchAgeGroupImpl) then) =
      __$$FetchAgeGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAgeGroupImplCopyWithImpl<$Res>
    extends _$AgeSelectionEventCopyWithImpl<$Res, _$FetchAgeGroupImpl>
    implements _$$FetchAgeGroupImplCopyWith<$Res> {
  __$$FetchAgeGroupImplCopyWithImpl(
      _$FetchAgeGroupImpl _value, $Res Function(_$FetchAgeGroupImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAgeGroupImpl implements _FetchAgeGroup {
  const _$FetchAgeGroupImpl();

  @override
  String toString() {
    return 'AgeSelectionEvent.fetchAgeGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAgeGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAgeGroup,
    required TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)
        selectageGroup,
    required TResult Function() started,
  }) {
    return fetchAgeGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAgeGroup,
    TResult? Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult? Function()? started,
  }) {
    return fetchAgeGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAgeGroup,
    TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (fetchAgeGroup != null) {
      return fetchAgeGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAgeGroup value) fetchAgeGroup,
    required TResult Function(_SelectageGroup value) selectageGroup,
    required TResult Function(_Started value) started,
  }) {
    return fetchAgeGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult? Function(_SelectageGroup value)? selectageGroup,
    TResult? Function(_Started value)? started,
  }) {
    return fetchAgeGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult Function(_SelectageGroup value)? selectageGroup,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (fetchAgeGroup != null) {
      return fetchAgeGroup(this);
    }
    return orElse();
  }
}

abstract class _FetchAgeGroup implements AgeSelectionEvent {
  const factory _FetchAgeGroup() = _$FetchAgeGroupImpl;
}

/// @nodoc
abstract class _$$SelectageGroupImplCopyWith<$Res> {
  factory _$$SelectageGroupImplCopyWith(_$SelectageGroupImpl value,
          $Res Function(_$SelectageGroupImpl) then) =
      __$$SelectageGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AgeGroupModel> ageGroups, int selectedIndex});
}

/// @nodoc
class __$$SelectageGroupImplCopyWithImpl<$Res>
    extends _$AgeSelectionEventCopyWithImpl<$Res, _$SelectageGroupImpl>
    implements _$$SelectageGroupImplCopyWith<$Res> {
  __$$SelectageGroupImplCopyWithImpl(
      _$SelectageGroupImpl _value, $Res Function(_$SelectageGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageGroups = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$SelectageGroupImpl(
      ageGroups: null == ageGroups
          ? _value._ageGroups
          : ageGroups // ignore: cast_nullable_to_non_nullable
              as List<AgeGroupModel>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectageGroupImpl implements _SelectageGroup {
  const _$SelectageGroupImpl(
      {required final List<AgeGroupModel> ageGroups,
      required this.selectedIndex})
      : _ageGroups = ageGroups;

  final List<AgeGroupModel> _ageGroups;
  @override
  List<AgeGroupModel> get ageGroups {
    if (_ageGroups is EqualUnmodifiableListView) return _ageGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ageGroups);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'AgeSelectionEvent.selectageGroup(ageGroups: $ageGroups, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectageGroupImpl &&
            const DeepCollectionEquality()
                .equals(other._ageGroups, _ageGroups) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ageGroups), selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectageGroupImplCopyWith<_$SelectageGroupImpl> get copyWith =>
      __$$SelectageGroupImplCopyWithImpl<_$SelectageGroupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAgeGroup,
    required TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)
        selectageGroup,
    required TResult Function() started,
  }) {
    return selectageGroup(ageGroups, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAgeGroup,
    TResult? Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult? Function()? started,
  }) {
    return selectageGroup?.call(ageGroups, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAgeGroup,
    TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (selectageGroup != null) {
      return selectageGroup(ageGroups, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAgeGroup value) fetchAgeGroup,
    required TResult Function(_SelectageGroup value) selectageGroup,
    required TResult Function(_Started value) started,
  }) {
    return selectageGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult? Function(_SelectageGroup value)? selectageGroup,
    TResult? Function(_Started value)? started,
  }) {
    return selectageGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult Function(_SelectageGroup value)? selectageGroup,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (selectageGroup != null) {
      return selectageGroup(this);
    }
    return orElse();
  }
}

abstract class _SelectageGroup implements AgeSelectionEvent {
  const factory _SelectageGroup(
      {required final List<AgeGroupModel> ageGroups,
      required final int selectedIndex}) = _$SelectageGroupImpl;

  List<AgeGroupModel> get ageGroups;
  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SelectageGroupImplCopyWith<_$SelectageGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AgeSelectionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AgeSelectionEvent.started()';
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
    required TResult Function() fetchAgeGroup,
    required TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)
        selectageGroup,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAgeGroup,
    TResult? Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAgeGroup,
    TResult Function(List<AgeGroupModel> ageGroups, int selectedIndex)?
        selectageGroup,
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
    required TResult Function(_FetchAgeGroup value) fetchAgeGroup,
    required TResult Function(_SelectageGroup value) selectageGroup,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult? Function(_SelectageGroup value)? selectageGroup,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAgeGroup value)? fetchAgeGroup,
    TResult Function(_SelectageGroup value)? selectageGroup,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AgeSelectionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$AgeSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AgeGroupModel> ageGroupModel, int selectedIndex)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
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
abstract class $AgeSelectionStateCopyWith<$Res> {
  factory $AgeSelectionStateCopyWith(
          AgeSelectionState value, $Res Function(AgeSelectionState) then) =
      _$AgeSelectionStateCopyWithImpl<$Res, AgeSelectionState>;
}

/// @nodoc
class _$AgeSelectionStateCopyWithImpl<$Res, $Val extends AgeSelectionState>
    implements $AgeSelectionStateCopyWith<$Res> {
  _$AgeSelectionStateCopyWithImpl(this._value, this._then);

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
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AgeSelectionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ErrorImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AgeSelectionState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AgeGroupModel> ageGroupModel, int selectedIndex)
        success,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
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

abstract class _Error implements AgeSelectionState {
  const factory _Error({required final String errorMsg}) = _$ErrorImpl;

  String get errorMsg;
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
    extends _$AgeSelectionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AgeSelectionState.initial()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AgeGroupModel> ageGroupModel, int selectedIndex)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
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

abstract class _Initial implements AgeSelectionState {
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
    extends _$AgeSelectionStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AgeSelectionState.loading()';
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
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AgeGroupModel> ageGroupModel, int selectedIndex)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
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

abstract class _Loading implements AgeSelectionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AgeGroupModel> ageGroupModel, int selectedIndex});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AgeSelectionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageGroupModel = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$SuccessImpl(
      ageGroupModel: null == ageGroupModel
          ? _value._ageGroupModel
          : ageGroupModel // ignore: cast_nullable_to_non_nullable
              as List<AgeGroupModel>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<AgeGroupModel> ageGroupModel,
      required this.selectedIndex})
      : _ageGroupModel = ageGroupModel;

  final List<AgeGroupModel> _ageGroupModel;
  @override
  List<AgeGroupModel> get ageGroupModel {
    if (_ageGroupModel is EqualUnmodifiableListView) return _ageGroupModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ageGroupModel);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'AgeSelectionState.success(ageGroupModel: $ageGroupModel, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._ageGroupModel, _ageGroupModel) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ageGroupModel), selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AgeGroupModel> ageGroupModel, int selectedIndex)
        success,
  }) {
    return success(ageGroupModel, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
  }) {
    return success?.call(ageGroupModel, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AgeGroupModel> ageGroupModel, int selectedIndex)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ageGroupModel, selectedIndex);
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

abstract class _Success implements AgeSelectionState {
  const factory _Success(
      {required final List<AgeGroupModel> ageGroupModel,
      required final int selectedIndex}) = _$SuccessImpl;

  List<AgeGroupModel> get ageGroupModel;
  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
