// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) {
  return _CharacterEntity.fromJson(json);
}

/// @nodoc
mixin _$CharacterEntity {
  String get userUid => throw _privateConstructorUsedError;
  String get clothesId => throw _privateConstructorUsedError;
  String get colorId => throw _privateConstructorUsedError;
  String get eyeId => throw _privateConstructorUsedError;
  String get hatId => throw _privateConstructorUsedError;
  CustomizationItemsEntity get itemsEntity =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterEntityCopyWith<CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEntityCopyWith<$Res> {
  factory $CharacterEntityCopyWith(
          CharacterEntity value, $Res Function(CharacterEntity) then) =
      _$CharacterEntityCopyWithImpl<$Res, CharacterEntity>;
  @useResult
  $Res call(
      {String userUid,
      String clothesId,
      String colorId,
      String eyeId,
      String hatId,
      CustomizationItemsEntity itemsEntity});

  $CustomizationItemsEntityCopyWith<$Res> get itemsEntity;
}

/// @nodoc
class _$CharacterEntityCopyWithImpl<$Res, $Val extends CharacterEntity>
    implements $CharacterEntityCopyWith<$Res> {
  _$CharacterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? clothesId = null,
    Object? colorId = null,
    Object? eyeId = null,
    Object? hatId = null,
    Object? itemsEntity = null,
  }) {
    return _then(_value.copyWith(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      clothesId: null == clothesId
          ? _value.clothesId
          : clothesId // ignore: cast_nullable_to_non_nullable
              as String,
      colorId: null == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String,
      eyeId: null == eyeId
          ? _value.eyeId
          : eyeId // ignore: cast_nullable_to_non_nullable
              as String,
      hatId: null == hatId
          ? _value.hatId
          : hatId // ignore: cast_nullable_to_non_nullable
              as String,
      itemsEntity: null == itemsEntity
          ? _value.itemsEntity
          : itemsEntity // ignore: cast_nullable_to_non_nullable
              as CustomizationItemsEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomizationItemsEntityCopyWith<$Res> get itemsEntity {
    return $CustomizationItemsEntityCopyWith<$Res>(_value.itemsEntity, (value) {
      return _then(_value.copyWith(itemsEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterEntityCopyWith<$Res>
    implements $CharacterEntityCopyWith<$Res> {
  factory _$$_CharacterEntityCopyWith(
          _$_CharacterEntity value, $Res Function(_$_CharacterEntity) then) =
      __$$_CharacterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userUid,
      String clothesId,
      String colorId,
      String eyeId,
      String hatId,
      CustomizationItemsEntity itemsEntity});

  @override
  $CustomizationItemsEntityCopyWith<$Res> get itemsEntity;
}

/// @nodoc
class __$$_CharacterEntityCopyWithImpl<$Res>
    extends _$CharacterEntityCopyWithImpl<$Res, _$_CharacterEntity>
    implements _$$_CharacterEntityCopyWith<$Res> {
  __$$_CharacterEntityCopyWithImpl(
      _$_CharacterEntity _value, $Res Function(_$_CharacterEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? clothesId = null,
    Object? colorId = null,
    Object? eyeId = null,
    Object? hatId = null,
    Object? itemsEntity = null,
  }) {
    return _then(_$_CharacterEntity(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      clothesId: null == clothesId
          ? _value.clothesId
          : clothesId // ignore: cast_nullable_to_non_nullable
              as String,
      colorId: null == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String,
      eyeId: null == eyeId
          ? _value.eyeId
          : eyeId // ignore: cast_nullable_to_non_nullable
              as String,
      hatId: null == hatId
          ? _value.hatId
          : hatId // ignore: cast_nullable_to_non_nullable
              as String,
      itemsEntity: null == itemsEntity
          ? _value.itemsEntity
          : itemsEntity // ignore: cast_nullable_to_non_nullable
              as CustomizationItemsEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterEntity implements _CharacterEntity {
  _$_CharacterEntity(
      {required this.userUid,
      required this.clothesId,
      required this.colorId,
      required this.eyeId,
      required this.hatId,
      required this.itemsEntity});

  factory _$_CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterEntityFromJson(json);

  @override
  final String userUid;
  @override
  final String clothesId;
  @override
  final String colorId;
  @override
  final String eyeId;
  @override
  final String hatId;
  @override
  final CustomizationItemsEntity itemsEntity;

  @override
  String toString() {
    return 'CharacterEntity(userUid: $userUid, clothesId: $clothesId, colorId: $colorId, eyeId: $eyeId, hatId: $hatId, itemsEntity: $itemsEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterEntity &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.clothesId, clothesId) ||
                other.clothesId == clothesId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.eyeId, eyeId) || other.eyeId == eyeId) &&
            (identical(other.hatId, hatId) || other.hatId == hatId) &&
            (identical(other.itemsEntity, itemsEntity) ||
                other.itemsEntity == itemsEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userUid, clothesId, colorId, eyeId, hatId, itemsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      __$$_CharacterEntityCopyWithImpl<_$_CharacterEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterEntityToJson(
      this,
    );
  }
}

abstract class _CharacterEntity implements CharacterEntity {
  factory _CharacterEntity(
          {required final String userUid,
          required final String clothesId,
          required final String colorId,
          required final String eyeId,
          required final String hatId,
          required final CustomizationItemsEntity itemsEntity}) =
      _$_CharacterEntity;

  factory _CharacterEntity.fromJson(Map<String, dynamic> json) =
      _$_CharacterEntity.fromJson;

  @override
  String get userUid;
  @override
  String get clothesId;
  @override
  String get colorId;
  @override
  String get eyeId;
  @override
  String get hatId;
  @override
  CustomizationItemsEntity get itemsEntity;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterEntityCopyWith<_$_CharacterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
