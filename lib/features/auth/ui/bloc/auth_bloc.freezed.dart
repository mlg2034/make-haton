// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  String? get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) signIn,
    required TResult Function(String email) signInEmail,
    required TResult Function(String? email) signOut,
    required TResult Function(String? email) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? signIn,
    TResult? Function(String email)? signInEmail,
    TResult? Function(String? email)? signOut,
    TResult? Function(String? email)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? signIn,
    TResult Function(String email)? signInEmail,
    TResult Function(String? email)? signOut,
    TResult Function(String? email)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignInEmail value) signInEmail,
    required TResult Function(SignOut value) signOut,
    required TResult Function(GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignInEmail value)? signInEmail,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignInEmail value)? signInEmail,
    TResult Function(SignOut value)? signOut,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email!
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$SignIn(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn({this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignIn &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      __$$SignInCopyWithImpl<_$SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) signIn,
    required TResult Function(String email) signInEmail,
    required TResult Function(String? email) signOut,
    required TResult Function(String? email) getUser,
  }) {
    return signIn(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? signIn,
    TResult? Function(String email)? signInEmail,
    TResult? Function(String? email)? signOut,
    TResult? Function(String? email)? getUser,
  }) {
    return signIn?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? signIn,
    TResult Function(String email)? signInEmail,
    TResult Function(String? email)? signOut,
    TResult Function(String? email)? getUser,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignInEmail value) signInEmail,
    required TResult Function(SignOut value) signOut,
    required TResult Function(GetUser value) getUser,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignInEmail value)? signInEmail,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(GetUser value)? getUser,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignInEmail value)? signInEmail,
    TResult Function(SignOut value)? signOut,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn({final String? email}) = _$SignIn;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEmailCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$SignInEmailCopyWith(
          _$SignInEmail value, $Res Function(_$SignInEmail) then) =
      __$$SignInEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEmail>
    implements _$$SignInEmailCopyWith<$Res> {
  __$$SignInEmailCopyWithImpl(
      _$SignInEmail _value, $Res Function(_$SignInEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEmail implements SignInEmail {
  const _$SignInEmail(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEmail &&
            (identical(other.email, email) || other.email == email) )
           
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEmailCopyWith<_$SignInEmail> get copyWith =>
      __$$SignInEmailCopyWithImpl<_$SignInEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) signIn,
    required TResult Function(String email) signInEmail,
    required TResult Function(String? email) signOut,
    required TResult Function(String? email) getUser,
  }) {
    return signInEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? signIn,
    TResult? Function(String email)? signInEmail,
    TResult? Function(String? email)? signOut,
    TResult? Function(String? email)? getUser,
  }) {
    return signInEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? signIn,
    TResult Function(String email)? signInEmail,
    TResult Function(String? email)? signOut,
    TResult Function(String? email)? getUser,
    required TResult orElse(),
  }) {
    if (signInEmail != null) {
      return signInEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignInEmail value) signInEmail,
    required TResult Function(SignOut value) signOut,
    required TResult Function(GetUser value) getUser,
  }) {
    return signInEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignInEmail value)? signInEmail,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(GetUser value)? getUser,
  }) {
    return signInEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignInEmail value)? signInEmail,
    TResult Function(SignOut value)? signOut,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (signInEmail != null) {
      return signInEmail(this);
    }
    return orElse();
  }
}

abstract class SignInEmail implements AuthEvent {
  const factory SignInEmail(final String email) =
      _$SignInEmail;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SignInEmailCopyWith<_$SignInEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$SignOut(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut({this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthEvent.signOut(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOut &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutCopyWith<_$SignOut> get copyWith =>
      __$$SignOutCopyWithImpl<_$SignOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) signIn,
    required TResult Function(String email) signInEmail,
    required TResult Function(String? email) signOut,
    required TResult Function(String? email) getUser,
  }) {
    return signOut(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? signIn,
    TResult? Function(String email)? signInEmail,
    TResult? Function(String? email)? signOut,
    TResult? Function(String? email)? getUser,
  }) {
    return signOut?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? signIn,
    TResult Function(String email)? signInEmail,
    TResult Function(String? email)? signOut,
    TResult Function(String? email)? getUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignInEmail value) signInEmail,
    required TResult Function(SignOut value) signOut,
    required TResult Function(GetUser value) getUser,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignInEmail value)? signInEmail,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(GetUser value)? getUser,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignInEmail value)? signInEmail,
    TResult Function(SignOut value)? signOut,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut({final String? email}) = _$SignOut;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$SignOutCopyWith<_$SignOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$GetUserCopyWith(_$GetUser value, $Res Function(_$GetUser) then) =
      __$$GetUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$GetUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUser>
    implements _$$GetUserCopyWith<$Res> {
  __$$GetUserCopyWithImpl(_$GetUser _value, $Res Function(_$GetUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$GetUser(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetUser implements GetUser {
  const _$GetUser({this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthEvent.getUser(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUser &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserCopyWith<_$GetUser> get copyWith =>
      __$$GetUserCopyWithImpl<_$GetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) signIn,
    required TResult Function(String email) signInEmail,
    required TResult Function(String? email) signOut,
    required TResult Function(String? email) getUser,
  }) {
    return getUser(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? signIn,
    TResult? Function(String email)? signInEmail,
    TResult? Function(String? email)? signOut,
    TResult? Function(String? email)? getUser,
  }) {
    return getUser?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? signIn,
    TResult Function(String email)? signInEmail,
    TResult Function(String? email)? signOut,
    TResult Function(String? email)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignInEmail value) signInEmail,
    required TResult Function(SignOut value) signOut,
    required TResult Function(GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignInEmail value)? signInEmail,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignInEmail value)? signInEmail,
    TResult Function(SignOut value)? signOut,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements AuthEvent {
  const factory GetUser({final String? email}) = _$GetUser;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$GetUserCopyWith<_$GetUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  UserEntity get userEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function(UserEntity userEntity) unauthorized,
    required TResult Function(UserEntity userEntity) loading,
    required TResult Function(UserEntity userEntity, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function(UserEntity userEntity)? unauthorized,
    TResult? Function(UserEntity userEntity)? loading,
    TResult? Function(UserEntity userEntity, String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function(UserEntity userEntity)? unauthorized,
    TResult Function(UserEntity userEntity)? loading,
    TResult Function(UserEntity userEntity, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_value.copyWith(
      userEntity: null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorizedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthorizedCopyWith(
          _$Authorized value, $Res Function(_$Authorized) then) =
      __$$AuthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity userEntity});

  @override
  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$AuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authorized>
    implements _$$AuthorizedCopyWith<$Res> {
  __$$AuthorizedCopyWithImpl(
      _$Authorized _value, $Res Function(_$Authorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$Authorized(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$Authorized implements Authorized {
  const _$Authorized(this.userEntity);

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.authorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authorized &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedCopyWith<_$Authorized> get copyWith =>
      __$$AuthorizedCopyWithImpl<_$Authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function(UserEntity userEntity) unauthorized,
    required TResult Function(UserEntity userEntity) loading,
    required TResult Function(UserEntity userEntity, String? message) error,
  }) {
    return authorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function(UserEntity userEntity)? unauthorized,
    TResult? Function(UserEntity userEntity)? loading,
    TResult? Function(UserEntity userEntity, String? message)? error,
  }) {
    return authorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function(UserEntity userEntity)? unauthorized,
    TResult Function(UserEntity userEntity)? loading,
    TResult Function(UserEntity userEntity, String? message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class Authorized implements AuthState {
  const factory Authorized(final UserEntity userEntity) = _$Authorized;

  @override
  UserEntity get userEntity;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizedCopyWith<_$Authorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity userEntity});

  @override
  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$Unauthorized(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized(this.userEntity);

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.unauthorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthorized &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      __$$UnauthorizedCopyWithImpl<_$Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function(UserEntity userEntity) unauthorized,
    required TResult Function(UserEntity userEntity) loading,
    required TResult Function(UserEntity userEntity, String? message) error,
  }) {
    return unauthorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function(UserEntity userEntity)? unauthorized,
    TResult? Function(UserEntity userEntity)? loading,
    TResult? Function(UserEntity userEntity, String? message)? error,
  }) {
    return unauthorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function(UserEntity userEntity)? unauthorized,
    TResult Function(UserEntity userEntity)? loading,
    TResult Function(UserEntity userEntity, String? message)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements AuthState {
  const factory Unauthorized(final UserEntity userEntity) = _$Unauthorized;

  @override
  UserEntity get userEntity;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity userEntity});

  @override
  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$Loading(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.userEntity);

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.loading(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function(UserEntity userEntity) unauthorized,
    required TResult Function(UserEntity userEntity) loading,
    required TResult Function(UserEntity userEntity, String? message) error,
  }) {
    return loading(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function(UserEntity userEntity)? unauthorized,
    TResult? Function(UserEntity userEntity)? loading,
    TResult? Function(UserEntity userEntity, String? message)? error,
  }) {
    return loading?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function(UserEntity userEntity)? unauthorized,
    TResult Function(UserEntity userEntity)? loading,
    TResult Function(UserEntity userEntity, String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading(final UserEntity userEntity) = _$Loading;

  @override
  UserEntity get userEntity;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity userEntity, String? message});

  @override
  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
    Object? message = freezed,
  }) {
    return _then(_$Error(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.userEntity, [this.message]);

  @override
  final UserEntity userEntity;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.error(userEntity: $userEntity, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function(UserEntity userEntity) unauthorized,
    required TResult Function(UserEntity userEntity) loading,
    required TResult Function(UserEntity userEntity, String? message) error,
  }) {
    return error(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function(UserEntity userEntity)? unauthorized,
    TResult? Function(UserEntity userEntity)? loading,
    TResult? Function(UserEntity userEntity, String? message)? error,
  }) {
    return error?.call(userEntity, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function(UserEntity userEntity)? unauthorized,
    TResult Function(UserEntity userEntity)? loading,
    TResult Function(UserEntity userEntity, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(userEntity, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthState {
  const factory Error(final UserEntity userEntity, [final String? message]) =
      _$Error;

  @override
  UserEntity get userEntity;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
