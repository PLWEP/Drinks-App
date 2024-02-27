// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Drink _$DrinkFromJson(Map<String, dynamic> json) {
  return _Drink.fromJson(json);
}

/// @nodoc
mixin _$Drink {
  String get name => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get calories => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get imageAsset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkCopyWith<Drink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) then) =
      _$DrinkCopyWithImpl<$Res, Drink>;
  @useResult
  $Res call(
      {String name,
      String weight,
      String rating,
      String calories,
      String description,
      String price,
      String imageAsset});
}

/// @nodoc
class _$DrinkCopyWithImpl<$Res, $Val extends Drink>
    implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? weight = null,
    Object? rating = null,
    Object? calories = null,
    Object? description = null,
    Object? price = null,
    Object? imageAsset = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrinkImplCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$DrinkImplCopyWith(
          _$DrinkImpl value, $Res Function(_$DrinkImpl) then) =
      __$$DrinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String weight,
      String rating,
      String calories,
      String description,
      String price,
      String imageAsset});
}

/// @nodoc
class __$$DrinkImplCopyWithImpl<$Res>
    extends _$DrinkCopyWithImpl<$Res, _$DrinkImpl>
    implements _$$DrinkImplCopyWith<$Res> {
  __$$DrinkImplCopyWithImpl(
      _$DrinkImpl _value, $Res Function(_$DrinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? weight = null,
    Object? rating = null,
    Object? calories = null,
    Object? description = null,
    Object? price = null,
    Object? imageAsset = null,
  }) {
    return _then(_$DrinkImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrinkImpl implements _Drink {
  _$DrinkImpl(
      {required this.name,
      required this.weight,
      required this.rating,
      required this.calories,
      required this.description,
      required this.price,
      required this.imageAsset});

  factory _$DrinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrinkImplFromJson(json);

  @override
  final String name;
  @override
  final String weight;
  @override
  final String rating;
  @override
  final String calories;
  @override
  final String description;
  @override
  final String price;
  @override
  final String imageAsset;

  @override
  String toString() {
    return 'Drink(name: $name, weight: $weight, rating: $rating, calories: $calories, description: $description, price: $price, imageAsset: $imageAsset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrinkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, weight, rating, calories,
      description, price, imageAsset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrinkImplCopyWith<_$DrinkImpl> get copyWith =>
      __$$DrinkImplCopyWithImpl<_$DrinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DrinkImplToJson(
      this,
    );
  }
}

abstract class _Drink implements Drink {
  factory _Drink(
      {required final String name,
      required final String weight,
      required final String rating,
      required final String calories,
      required final String description,
      required final String price,
      required final String imageAsset}) = _$DrinkImpl;

  factory _Drink.fromJson(Map<String, dynamic> json) = _$DrinkImpl.fromJson;

  @override
  String get name;
  @override
  String get weight;
  @override
  String get rating;
  @override
  String get calories;
  @override
  String get description;
  @override
  String get price;
  @override
  String get imageAsset;
  @override
  @JsonKey(ignore: true)
  _$$DrinkImplCopyWith<_$DrinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
