// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_items_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomizationItemsEntity {
  String get svgPicture => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get isBought => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomizationItemsEntityCopyWith<CustomizationItemsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizationItemsEntityCopyWith<$Res> {
  factory $CustomizationItemsEntityCopyWith(CustomizationItemsEntity value,
          $Res Function(CustomizationItemsEntity) then) =
      _$CustomizationItemsEntityCopyWithImpl<$Res, CustomizationItemsEntity>;
  @useResult
  $Res call(
      {String svgPicture,
      String title,
      int price,
      bool isBought,
      bool isSelected});
}

/// @nodoc
class _$CustomizationItemsEntityCopyWithImpl<$Res,
        $Val extends CustomizationItemsEntity>
    implements $CustomizationItemsEntityCopyWith<$Res> {
  _$CustomizationItemsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svgPicture = null,
    Object? title = null,
    Object? price = null,
    Object? isBought = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      svgPicture: null == svgPicture
          ? _value.svgPicture
          : svgPicture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isBought: null == isBought
          ? _value.isBought
          : isBought // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomizationItemsEntityCopyWith<$Res>
    implements $CustomizationItemsEntityCopyWith<$Res> {
  factory _$$_CustomizationItemsEntityCopyWith(
          _$_CustomizationItemsEntity value,
          $Res Function(_$_CustomizationItemsEntity) then) =
      __$$_CustomizationItemsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String svgPicture,
      String title,
      int price,
      bool isBought,
      bool isSelected});
}

/// @nodoc
class __$$_CustomizationItemsEntityCopyWithImpl<$Res>
    extends _$CustomizationItemsEntityCopyWithImpl<$Res,
        _$_CustomizationItemsEntity>
    implements _$$_CustomizationItemsEntityCopyWith<$Res> {
  __$$_CustomizationItemsEntityCopyWithImpl(_$_CustomizationItemsEntity _value,
      $Res Function(_$_CustomizationItemsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svgPicture = null,
    Object? title = null,
    Object? price = null,
    Object? isBought = null,
    Object? isSelected = null,
  }) {
    return _then(_$_CustomizationItemsEntity(
      svgPicture: null == svgPicture
          ? _value.svgPicture
          : svgPicture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isBought: null == isBought
          ? _value.isBought
          : isBought // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CustomizationItemsEntity implements _CustomizationItemsEntity {
  _$_CustomizationItemsEntity(
      {required this.svgPicture,
      required this.title,
      required this.price,
      required this.isBought,
      required this.isSelected});

  @override
  final String svgPicture;
  @override
  final String title;
  @override
  final int price;
  @override
  final bool isBought;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'CustomizationItemsEntity(svgPicture: $svgPicture, title: $title, price: $price, isBought: $isBought, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomizationItemsEntity &&
            (identical(other.svgPicture, svgPicture) ||
                other.svgPicture == svgPicture) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isBought, isBought) ||
                other.isBought == isBought) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, svgPicture, title, price, isBought, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomizationItemsEntityCopyWith<_$_CustomizationItemsEntity>
      get copyWith => __$$_CustomizationItemsEntityCopyWithImpl<
          _$_CustomizationItemsEntity>(this, _$identity);
}

abstract class _CustomizationItemsEntity implements CustomizationItemsEntity {
  factory _CustomizationItemsEntity(
      {required final String svgPicture,
      required final String title,
      required final int price,
      required final bool isBought,
      required final bool isSelected}) = _$_CustomizationItemsEntity;

  @override
  String get svgPicture;
  @override
  String get title;
  @override
  int get price;
  @override
  bool get isBought;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_CustomizationItemsEntityCopyWith<_$_CustomizationItemsEntity>
      get copyWith => throw _privateConstructorUsedError;
}
