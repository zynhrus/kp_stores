// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductModelCWProxy {
  ProductModel category(String category);

  ProductModel description(String description);

  ProductModel id(int id);

  ProductModel image(String image);

  ProductModel price(double price);

  ProductModel rating(RatingModel? rating);

  ProductModel title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductModel call({
    String? category,
    String? description,
    int? id,
    String? image,
    double? price,
    RatingModel? rating,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductModel.copyWith.fieldName(...)`
class _$ProductModelCWProxyImpl implements _$ProductModelCWProxy {
  final ProductModel _value;

  const _$ProductModelCWProxyImpl(this._value);

  @override
  ProductModel category(String category) => this(category: category);

  @override
  ProductModel description(String description) =>
      this(description: description);

  @override
  ProductModel id(int id) => this(id: id);

  @override
  ProductModel image(String image) => this(image: image);

  @override
  ProductModel price(double price) => this(price: price);

  @override
  ProductModel rating(RatingModel? rating) => this(rating: rating);

  @override
  ProductModel title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductModel call({
    Object? category = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return ProductModel(
      category: category == const $CopyWithPlaceholder() || category == null
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      image: image == const $CopyWithPlaceholder() || image == null
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as RatingModel?,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $ProductModelCopyWith on ProductModel {
  /// Returns a callable class that can be used as follows: `instanceOfProductModel.copyWith(...)` or like so:`instanceOfProductModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductModelCWProxy get copyWith => _$ProductModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      rating: json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => RatingModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$RatingModelToJson(RatingModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
