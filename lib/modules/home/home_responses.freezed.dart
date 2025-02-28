// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) {
  return _HomeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeResponseModel {
  List<DataResponseModel> get data => throw _privateConstructorUsedError;

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseModelCopyWith<HomeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseModelCopyWith<$Res> {
  factory $HomeResponseModelCopyWith(
          HomeResponseModel value, $Res Function(HomeResponseModel) then) =
      _$HomeResponseModelCopyWithImpl<$Res, HomeResponseModel>;
  @useResult
  $Res call({List<DataResponseModel> data});
}

/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res, $Val extends HomeResponseModel>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseModelImplCopyWith<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  factory _$$HomeResponseModelImplCopyWith(_$HomeResponseModelImpl value,
          $Res Function(_$HomeResponseModelImpl) then) =
      __$$HomeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataResponseModel> data});
}

/// @nodoc
class __$$HomeResponseModelImplCopyWithImpl<$Res>
    extends _$HomeResponseModelCopyWithImpl<$Res, _$HomeResponseModelImpl>
    implements _$$HomeResponseModelImplCopyWith<$Res> {
  __$$HomeResponseModelImplCopyWithImpl(_$HomeResponseModelImpl _value,
      $Res Function(_$HomeResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HomeResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseModelImpl implements _HomeResponseModel {
  const _$HomeResponseModelImpl({final List<DataResponseModel> data = const []})
      : _data = data;

  factory _$HomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseModelImplFromJson(json);

  final List<DataResponseModel> _data;
  @override
  @JsonKey()
  List<DataResponseModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeResponseModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      __$$HomeResponseModelImplCopyWithImpl<_$HomeResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HomeResponseModel implements HomeResponseModel {
  const factory _HomeResponseModel({final List<DataResponseModel> data}) =
      _$HomeResponseModelImpl;

  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$HomeResponseModelImpl.fromJson;

  @override
  List<DataResponseModel> get data;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataResponseModel _$DataResponseModelFromJson(Map<String, dynamic> json) {
  return _DataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DataResponseModel {
  String get viewType => throw _privateConstructorUsedError;
  List<TypeItem> get items => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;

  /// Serializes this DataResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataResponseModelCopyWith<DataResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseModelCopyWith<$Res> {
  factory $DataResponseModelCopyWith(
          DataResponseModel value, $Res Function(DataResponseModel) then) =
      _$DataResponseModelCopyWithImpl<$Res, DataResponseModel>;
  @useResult
  $Res call(
      {String viewType, List<TypeItem> items, String title, String subTitle});
}

/// @nodoc
class _$DataResponseModelCopyWithImpl<$Res, $Val extends DataResponseModel>
    implements $DataResponseModelCopyWith<$Res> {
  _$DataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
    Object? items = null,
    Object? title = null,
    Object? subTitle = null,
  }) {
    return _then(_value.copyWith(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TypeItem>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataResponseModelImplCopyWith<$Res>
    implements $DataResponseModelCopyWith<$Res> {
  factory _$$DataResponseModelImplCopyWith(_$DataResponseModelImpl value,
          $Res Function(_$DataResponseModelImpl) then) =
      __$$DataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String viewType, List<TypeItem> items, String title, String subTitle});
}

/// @nodoc
class __$$DataResponseModelImplCopyWithImpl<$Res>
    extends _$DataResponseModelCopyWithImpl<$Res, _$DataResponseModelImpl>
    implements _$$DataResponseModelImplCopyWith<$Res> {
  __$$DataResponseModelImplCopyWithImpl(_$DataResponseModelImpl _value,
      $Res Function(_$DataResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
    Object? items = null,
    Object? title = null,
    Object? subTitle = null,
  }) {
    return _then(_$DataResponseModelImpl(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TypeItem>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataResponseModelImpl implements _DataResponseModel {
  const _$DataResponseModelImpl(
      {this.viewType = '',
      final List<TypeItem> items = const [],
      this.title = '',
      this.subTitle = ''})
      : _items = items;

  factory _$DataResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final String viewType;
  final List<TypeItem> _items;
  @override
  @JsonKey()
  List<TypeItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subTitle;

  @override
  String toString() {
    return 'DataResponseModel(viewType: $viewType, items: $items, title: $title, subTitle: $subTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataResponseModelImpl &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, viewType,
      const DeepCollectionEquality().hash(_items), title, subTitle);

  /// Create a copy of DataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataResponseModelImplCopyWith<_$DataResponseModelImpl> get copyWith =>
      __$$DataResponseModelImplCopyWithImpl<_$DataResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DataResponseModel implements DataResponseModel {
  const factory _DataResponseModel(
      {final String viewType,
      final List<TypeItem> items,
      final String title,
      final String subTitle}) = _$DataResponseModelImpl;

  factory _DataResponseModel.fromJson(Map<String, dynamic> json) =
      _$DataResponseModelImpl.fromJson;

  @override
  String get viewType;
  @override
  List<TypeItem> get items;
  @override
  String get title;
  @override
  String get subTitle;

  /// Create a copy of DataResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataResponseModelImplCopyWith<_$DataResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeItem _$TypeItemFromJson(Map<String, dynamic> json) {
  return _TypeItem.fromJson(json);
}

/// @nodoc
mixin _$TypeItem {
  int get key => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  Brand get brand => throw _privateConstructorUsedError;

  /// Serializes this TypeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeItemCopyWith<TypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeItemCopyWith<$Res> {
  factory $TypeItemCopyWith(TypeItem value, $Res Function(TypeItem) then) =
      _$TypeItemCopyWithImpl<$Res, TypeItem>;
  @useResult
  $Res call(
      {int key,
      String image,
      String title,
      String description,
      Rating rating,
      Brand brand});

  $RatingCopyWith<$Res> get rating;
  $BrandCopyWith<$Res> get brand;
}

/// @nodoc
class _$TypeItemCopyWithImpl<$Res, $Val extends TypeItem>
    implements $TypeItemCopyWith<$Res> {
  _$TypeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
    ) as $Val);
  }

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get brand {
    return $BrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeItemImplCopyWith<$Res>
    implements $TypeItemCopyWith<$Res> {
  factory _$$TypeItemImplCopyWith(
          _$TypeItemImpl value, $Res Function(_$TypeItemImpl) then) =
      __$$TypeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int key,
      String image,
      String title,
      String description,
      Rating rating,
      Brand brand});

  @override
  $RatingCopyWith<$Res> get rating;
  @override
  $BrandCopyWith<$Res> get brand;
}

/// @nodoc
class __$$TypeItemImplCopyWithImpl<$Res>
    extends _$TypeItemCopyWithImpl<$Res, _$TypeItemImpl>
    implements _$$TypeItemImplCopyWith<$Res> {
  __$$TypeItemImplCopyWithImpl(
      _$TypeItemImpl _value, $Res Function(_$TypeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? image = null,
    Object? title = null,
    Object? description = null,
    Object? rating = null,
    Object? brand = null,
  }) {
    return _then(_$TypeItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeItemImpl implements _TypeItem {
  const _$TypeItemImpl(
      {this.key = -1,
      this.image = '',
      this.title = '',
      this.description = '',
      this.rating = const Rating(),
      this.brand = const Brand()});

  factory _$TypeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeItemImplFromJson(json);

  @override
  @JsonKey()
  final int key;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final Rating rating;
  @override
  @JsonKey()
  final Brand brand;

  @override
  String toString() {
    return 'TypeItem(key: $key, image: $image, title: $title, description: $description, rating: $rating, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, image, title, description, rating, brand);

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeItemImplCopyWith<_$TypeItemImpl> get copyWith =>
      __$$TypeItemImplCopyWithImpl<_$TypeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeItemImplToJson(
      this,
    );
  }
}

abstract class _TypeItem implements TypeItem {
  const factory _TypeItem(
      {final int key,
      final String image,
      final String title,
      final String description,
      final Rating rating,
      final Brand brand}) = _$TypeItemImpl;

  factory _TypeItem.fromJson(Map<String, dynamic> json) =
      _$TypeItemImpl.fromJson;

  @override
  int get key;
  @override
  String get image;
  @override
  String get title;
  @override
  String get description;
  @override
  Rating get rating;
  @override
  Brand get brand;

  /// Create a copy of TypeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeItemImplCopyWith<_$TypeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String get start => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;

  /// Serializes this Rating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({String start, String count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String count});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? count = null,
  }) {
    return _then(_$RatingImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl({this.start = '', this.count = ''});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  @JsonKey()
  final String start;
  @override
  @JsonKey()
  final String count;

  @override
  String toString() {
    return 'Rating(start: $start, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, count);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating({final String start, final String count}) =
      _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  String get start;
  @override
  String get count;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({String name, String model});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String model});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
  }) {
    return _then(_$BrandImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl({this.name = '', this.model = ''});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String model;

  @override
  String toString() {
    return 'Brand(name: $name, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, model);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand({final String name, final String model}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String get name;
  @override
  String get model;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
