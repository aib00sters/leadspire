// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get catId => throw _privateConstructorUsedError;
  String get catName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String catId, String catName, String imageUrl});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
    Object? catName = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
      catName: null == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String catId, String catName, String imageUrl});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
    Object? catName = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CategoryImpl(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
      catName: null == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.catId, required this.catName, required this.imageUrl});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String catId;
  @override
  final String catName;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Category(catId: $catId, catName: $catName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.catName, catName) || other.catName == catName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catId, catName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String catId,
      required final String catName,
      required final String imageUrl}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get catId;
  @override
  String get catName;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return _HomeData.fromJson(json);
}

/// @nodoc
mixin _$HomeData {
  List<Recent> get recent => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call({List<Recent> recent, List<Category> categories});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recent = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      recent: null == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as List<Recent>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recent> recent, List<Category> categories});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recent = null,
    Object? categories = null,
  }) {
    return _then(_$HomeDataImpl(
      recent: null == recent
          ? _value._recent
          : recent // ignore: cast_nullable_to_non_nullable
              as List<Recent>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataImpl implements _HomeData {
  const _$HomeDataImpl(
      {required final List<Recent> recent,
      required final List<Category> categories})
      : _recent = recent,
        _categories = categories;

  factory _$HomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataImplFromJson(json);

  final List<Recent> _recent;
  @override
  List<Recent> get recent {
    if (_recent is EqualUnmodifiableListView) return _recent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recent);
  }

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeData(recent: $recent, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality().equals(other._recent, _recent) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recent),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataImplToJson(
      this,
    );
  }
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {required final List<Recent> recent,
      required final List<Category> categories}) = _$HomeDataImpl;

  factory _HomeData.fromJson(Map<String, dynamic> json) =
      _$HomeDataImpl.fromJson;

  @override
  List<Recent> get recent;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomePageModel _$HomePageModelFromJson(Map<String, dynamic> json) {
  return _HomePageModel.fromJson(json);
}

/// @nodoc
mixin _$HomePageModel {
  HomeData get homeData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageModelCopyWith<HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelCopyWith<$Res> {
  factory $HomePageModelCopyWith(
          HomePageModel value, $Res Function(HomePageModel) then) =
      _$HomePageModelCopyWithImpl<$Res, HomePageModel>;
  @useResult
  $Res call({HomeData homeData});

  $HomeDataCopyWith<$Res> get homeData;
}

/// @nodoc
class _$HomePageModelCopyWithImpl<$Res, $Val extends HomePageModel>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
  }) {
    return _then(_value.copyWith(
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDataCopyWith<$Res> get homeData {
    return $HomeDataCopyWith<$Res>(_value.homeData, (value) {
      return _then(_value.copyWith(homeData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageModelImplCopyWith<$Res>
    implements $HomePageModelCopyWith<$Res> {
  factory _$$HomePageModelImplCopyWith(
          _$HomePageModelImpl value, $Res Function(_$HomePageModelImpl) then) =
      __$$HomePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeData homeData});

  @override
  $HomeDataCopyWith<$Res> get homeData;
}

/// @nodoc
class __$$HomePageModelImplCopyWithImpl<$Res>
    extends _$HomePageModelCopyWithImpl<$Res, _$HomePageModelImpl>
    implements _$$HomePageModelImplCopyWith<$Res> {
  __$$HomePageModelImplCopyWithImpl(
      _$HomePageModelImpl _value, $Res Function(_$HomePageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
  }) {
    return _then(_$HomePageModelImpl(
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageModelImpl implements _HomePageModel {
  const _$HomePageModelImpl({required this.homeData});

  factory _$HomePageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageModelImplFromJson(json);

  @override
  final HomeData homeData;

  @override
  String toString() {
    return 'HomePageModel(homeData: $homeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelImpl &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, homeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      __$$HomePageModelImplCopyWithImpl<_$HomePageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageModelImplToJson(
      this,
    );
  }
}

abstract class _HomePageModel implements HomePageModel {
  const factory _HomePageModel({required final HomeData homeData}) =
      _$HomePageModelImpl;

  factory _HomePageModel.fromJson(Map<String, dynamic> json) =
      _$HomePageModelImpl.fromJson;

  @override
  HomeData get homeData;
  @override
  @JsonKey(ignore: true)
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recent _$RecentFromJson(Map<String, dynamic> json) {
  return _Recent.fromJson(json);
}

/// @nodoc
mixin _$Recent {
  String get activityName => throw _privateConstructorUsedError;
  String get activityId => throw _privateConstructorUsedError;
  String get activityImage => throw _privateConstructorUsedError;
  String get songUrl => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentCopyWith<Recent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentCopyWith<$Res> {
  factory $RecentCopyWith(Recent value, $Res Function(Recent) then) =
      _$RecentCopyWithImpl<$Res, Recent>;
  @useResult
  $Res call(
      {String activityName,
      String activityId,
      String activityImage,
      String songUrl,
      String subtitle});
}

/// @nodoc
class _$RecentCopyWithImpl<$Res, $Val extends Recent>
    implements $RecentCopyWith<$Res> {
  _$RecentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityName = null,
    Object? activityId = null,
    Object? activityImage = null,
    Object? songUrl = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      activityName: null == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      activityImage: null == activityImage
          ? _value.activityImage
          : activityImage // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentImplCopyWith<$Res> implements $RecentCopyWith<$Res> {
  factory _$$RecentImplCopyWith(
          _$RecentImpl value, $Res Function(_$RecentImpl) then) =
      __$$RecentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String activityName,
      String activityId,
      String activityImage,
      String songUrl,
      String subtitle});
}

/// @nodoc
class __$$RecentImplCopyWithImpl<$Res>
    extends _$RecentCopyWithImpl<$Res, _$RecentImpl>
    implements _$$RecentImplCopyWith<$Res> {
  __$$RecentImplCopyWithImpl(
      _$RecentImpl _value, $Res Function(_$RecentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityName = null,
    Object? activityId = null,
    Object? activityImage = null,
    Object? songUrl = null,
    Object? subtitle = null,
  }) {
    return _then(_$RecentImpl(
      activityName: null == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      activityImage: null == activityImage
          ? _value.activityImage
          : activityImage // ignore: cast_nullable_to_non_nullable
              as String,
      songUrl: null == songUrl
          ? _value.songUrl
          : songUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentImpl implements _Recent {
  const _$RecentImpl(
      {required this.activityName,
      required this.activityId,
      required this.activityImage,
      required this.songUrl,
      required this.subtitle});

  factory _$RecentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentImplFromJson(json);

  @override
  final String activityName;
  @override
  final String activityId;
  @override
  final String activityImage;
  @override
  final String songUrl;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'Recent(activityName: $activityName, activityId: $activityId, activityImage: $activityImage, songUrl: $songUrl, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentImpl &&
            (identical(other.activityName, activityName) ||
                other.activityName == activityName) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.activityImage, activityImage) ||
                other.activityImage == activityImage) &&
            (identical(other.songUrl, songUrl) || other.songUrl == songUrl) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, activityName, activityId, activityImage, songUrl, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentImplCopyWith<_$RecentImpl> get copyWith =>
      __$$RecentImplCopyWithImpl<_$RecentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentImplToJson(
      this,
    );
  }
}

abstract class _Recent implements Recent {
  const factory _Recent(
      {required final String activityName,
      required final String activityId,
      required final String activityImage,
      required final String songUrl,
      required final String subtitle}) = _$RecentImpl;

  factory _Recent.fromJson(Map<String, dynamic> json) = _$RecentImpl.fromJson;

  @override
  String get activityName;
  @override
  String get activityId;
  @override
  String get activityImage;
  @override
  String get songUrl;
  @override
  String get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$RecentImplCopyWith<_$RecentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
