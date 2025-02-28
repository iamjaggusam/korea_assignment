// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseModelImpl _$$HomeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResponseModelImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => DataResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeResponseModelImplToJson(
        _$HomeResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataResponseModelImpl _$$DataResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataResponseModelImpl(
      viewType: json['viewType'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => TypeItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      title: json['title'] as String? ?? '',
      subTitle: json['subTitle'] as String? ?? '',
    );

Map<String, dynamic> _$$DataResponseModelImplToJson(
        _$DataResponseModelImpl instance) =>
    <String, dynamic>{
      'viewType': instance.viewType,
      'items': instance.items,
      'title': instance.title,
      'subTitle': instance.subTitle,
    };

_$TypeItemImpl _$$TypeItemImplFromJson(Map<String, dynamic> json) =>
    _$TypeItemImpl(
      key: (json['key'] as num?)?.toInt() ?? -1,
      image: json['image'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      rating: json['rating'] == null
          ? const Rating()
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? const Brand()
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeItemImplToJson(_$TypeItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'brand': instance.brand,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      start: json['start'] as String? ?? '',
      count: json['count'] as String? ?? '',
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'count': instance.count,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      name: json['name'] as String? ?? '',
      model: json['model'] as String? ?? '',
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
    };
