// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrinkImpl _$$DrinkImplFromJson(Map<String, dynamic> json) => _$DrinkImpl(
      name: json['name'] as String,
      weight: json['weight'] as String,
      rating: json['rating'] as String,
      calories: json['calories'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      imageAsset: json['imageAsset'] as String,
    );

Map<String, dynamic> _$$DrinkImplToJson(_$DrinkImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'weight': instance.weight,
      'rating': instance.rating,
      'calories': instance.calories,
      'description': instance.description,
      'price': instance.price,
      'imageAsset': instance.imageAsset,
    };
