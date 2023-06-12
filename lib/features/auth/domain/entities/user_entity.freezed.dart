// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserEntity.fromJson(json);
    case 'empty':
      return _EmptyUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserEntity {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get practicedWords => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)
        $default, {
    required TResult Function(
            String name, String id, int practicedWords, int coins)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult? Function(String name, String id, int practicedWords, int coins)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult Function(String name, String id, int practicedWords, int coins)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEntity value) $default, {
    required TResult Function(_EmptyUser value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEntity value)? $default, {
    TResult? Function(_EmptyUser value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEntity value)? $default, {
    TResult Function(_EmptyUser value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call({String name, String id, int practicedWords, int coins});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? practicedWords = null,
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      practicedWords: null == practicedWords
          ? _value.practicedWords
          : practicedWords // ignore: cast_nullable_to_non_nullable
              as int,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, int practicedWords, int coins});
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? practicedWords = null,
    Object? coins = null,
  }) {
    return _then(_$_UserEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      practicedWords: null == practicedWords
          ? _value.practicedWords
          : practicedWords // ignore: cast_nullable_to_non_nullable
              as int,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity implements _UserEntity {
  _$_UserEntity(
      {required this.name,
      required this.id,
      this.practicedWords = 0,
      this.coins = 0,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  @JsonKey()
  final int practicedWords;
  @override
  @JsonKey()
  final int coins;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserEntity(name: $name, id: $id, practicedWords: $practicedWords, coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.practicedWords, practicedWords) ||
                other.practicedWords == practicedWords) &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, practicedWords, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)
        $default, {
    required TResult Function(
            String name, String id, int practicedWords, int coins)
        empty,
  }) {
    return $default(name, id, practicedWords, coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult? Function(String name, String id, int practicedWords, int coins)?
        empty,
  }) {
    return $default?.call(name, id, practicedWords, coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult Function(String name, String id, int practicedWords, int coins)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, id, practicedWords, coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEntity value) $default, {
    required TResult Function(_EmptyUser value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEntity value)? $default, {
    TResult? Function(_EmptyUser value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEntity value)? $default, {
    TResult Function(_EmptyUser value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  factory _UserEntity(
      {required final String name,
      required final String id,
      final int practicedWords,
      final int coins}) = _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get practicedWords;
  @override
  int get coins;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyUserCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_EmptyUserCopyWith(
          _$_EmptyUser value, $Res Function(_$_EmptyUser) then) =
      __$$_EmptyUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, int practicedWords, int coins});
}

/// @nodoc
class __$$_EmptyUserCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_EmptyUser>
    implements _$$_EmptyUserCopyWith<$Res> {
  __$$_EmptyUserCopyWithImpl(
      _$_EmptyUser _value, $Res Function(_$_EmptyUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? practicedWords = null,
    Object? coins = null,
  }) {
    return _then(_$_EmptyUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      practicedWords: null == practicedWords
          ? _value.practicedWords
          : practicedWords // ignore: cast_nullable_to_non_nullable
              as int,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmptyUser implements _EmptyUser {
  _$_EmptyUser(
      {this.name = '',
      this.id = '',
      this.practicedWords = 0,
      this.coins = 0,
      final String? $type})
      : $type = $type ?? 'empty';

  factory _$_EmptyUser.fromJson(Map<String, dynamic> json) =>
      _$$_EmptyUserFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int practicedWords;
  @override
  @JsonKey()
  final int coins;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserEntity.empty(name: $name, id: $id, practicedWords: $practicedWords, coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmptyUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.practicedWords, practicedWords) ||
                other.practicedWords == practicedWords) &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, practicedWords, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyUserCopyWith<_$_EmptyUser> get copyWith =>
      __$$_EmptyUserCopyWithImpl<_$_EmptyUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)
        $default, {
    required TResult Function(
            String name, String id, int practicedWords, int coins)
        empty,
  }) {
    return empty(name, id, practicedWords, coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult? Function(String name, String id, int practicedWords, int coins)?
        empty,
  }) {
    return empty?.call(name, id, practicedWords, coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String id, int practicedWords, int coins)?
        $default, {
    TResult Function(String name, String id, int practicedWords, int coins)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(name, id, practicedWords, coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserEntity value) $default, {
    required TResult Function(_EmptyUser value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserEntity value)? $default, {
    TResult? Function(_EmptyUser value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserEntity value)? $default, {
    TResult Function(_EmptyUser value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmptyUserToJson(
      this,
    );
  }
}

abstract class _EmptyUser implements UserEntity {
  factory _EmptyUser(
      {final String name,
      final String id,
      final int practicedWords,
      final int coins}) = _$_EmptyUser;

  factory _EmptyUser.fromJson(Map<String, dynamic> json) =
      _$_EmptyUser.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get practicedWords;
  @override
  int get coins;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyUserCopyWith<_$_EmptyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Settings {
  bool get notificationsEnabled => throw _privateConstructorUsedError;
  bool get soundEnabled => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get darkThemeEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {bool notificationsEnabled,
      bool soundEnabled,
      String locale,
      bool darkThemeEnabled});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsEnabled = null,
    Object? soundEnabled = null,
    Object? locale = null,
    Object? darkThemeEnabled = null,
  }) {
    return _then(_value.copyWith(
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      soundEnabled: null == soundEnabled
          ? _value.soundEnabled
          : soundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      darkThemeEnabled: null == darkThemeEnabled
          ? _value.darkThemeEnabled
          : darkThemeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool notificationsEnabled,
      bool soundEnabled,
      String locale,
      bool darkThemeEnabled});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsEnabled = null,
    Object? soundEnabled = null,
    Object? locale = null,
    Object? darkThemeEnabled = null,
  }) {
    return _then(_$_Settings(
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      soundEnabled: null == soundEnabled
          ? _value.soundEnabled
          : soundEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      darkThemeEnabled: null == darkThemeEnabled
          ? _value.darkThemeEnabled
          : darkThemeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  _$_Settings(
      {this.notificationsEnabled = false,
      this.soundEnabled = false,
      this.locale = 'kk-KZ',
      this.darkThemeEnabled = false});

  @override
  @JsonKey()
  final bool notificationsEnabled;
  @override
  @JsonKey()
  final bool soundEnabled;
  @override
  @JsonKey()
  final String locale;
  @override
  @JsonKey()
  final bool darkThemeEnabled;

  @override
  String toString() {
    return 'Settings(notificationsEnabled: $notificationsEnabled, soundEnabled: $soundEnabled, locale: $locale, darkThemeEnabled: $darkThemeEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                other.notificationsEnabled == notificationsEnabled) &&
            (identical(other.soundEnabled, soundEnabled) ||
                other.soundEnabled == soundEnabled) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.darkThemeEnabled, darkThemeEnabled) ||
                other.darkThemeEnabled == darkThemeEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationsEnabled,
      soundEnabled, locale, darkThemeEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);
}

abstract class _Settings implements Settings {
  factory _Settings(
      {final bool notificationsEnabled,
      final bool soundEnabled,
      final String locale,
      final bool darkThemeEnabled}) = _$_Settings;

  @override
  bool get notificationsEnabled;
  @override
  bool get soundEnabled;
  @override
  String get locale;
  @override
  bool get darkThemeEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
