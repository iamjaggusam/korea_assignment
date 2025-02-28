import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_responses.freezed.dart';
part 'home_responses.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    @Default([]) List<DataResponseModel> data,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

@freezed
class DataResponseModel with _$DataResponseModel {
  const factory DataResponseModel({
    @Default('') String viewType,
    @Default([]) List<TypeItem> items,
    @Default('') String title,
    @Default('') String subTitle,
  }) = _DataResponseModel;

  factory DataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DataResponseModelFromJson(json);
}

@freezed
class TypeItem with _$TypeItem {
  const factory TypeItem({
    @Default(-1) int key,
    @Default('') String image,
    @Default('') String title,
    @Default('') String description,
    @Default(Rating()) Rating rating,
    @Default(Brand()) Brand brand,
  }) = _TypeItem;

  factory TypeItem.fromJson(Map<String, dynamic> json) =>
      _$TypeItemFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @Default('') String start,
    @Default('') String count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @Default('') String name,
    @Default('') String model,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
