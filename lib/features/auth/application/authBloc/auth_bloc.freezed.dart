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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitAuthImplCopyWith<$Res> {
  factory _$$InitAuthImplCopyWith(
          _$InitAuthImpl value, $Res Function(_$InitAuthImpl) then) =
      __$$InitAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitAuthImpl>
    implements _$$InitAuthImplCopyWith<$Res> {
  __$$InitAuthImplCopyWithImpl(
      _$InitAuthImpl _value, $Res Function(_$InitAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitAuthImpl implements InitAuth {
  const _$InitAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAuth implements AuthEvent {
  const factory InitAuth() = _$InitAuthImpl;
}

/// @nodoc
abstract class _$$SignInWithCredentialImplCopyWith<$Res> {
  factory _$$SignInWithCredentialImplCopyWith(_$SignInWithCredentialImpl value,
          $Res Function(_$SignInWithCredentialImpl) then) =
      __$$SignInWithCredentialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithCredentialImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithCredentialImpl>
    implements _$$SignInWithCredentialImplCopyWith<$Res> {
  __$$SignInWithCredentialImplCopyWithImpl(_$SignInWithCredentialImpl _value,
      $Res Function(_$SignInWithCredentialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithCredentialImpl implements SignInWithCredential {
  const _$SignInWithCredentialImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithCredentialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return signInWithCredential();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) {
    return signInWithCredential?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInWithCredential != null) {
      return signInWithCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) {
    return signInWithCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signInWithCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signInWithCredential != null) {
      return signInWithCredential(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredential implements AuthEvent {
  const factory SignInWithCredential() = _$SignInWithCredentialImpl;
}

/// @nodoc
abstract class _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$CreateUserWithEmailAndPasswordImplCopyWith(
          _$CreateUserWithEmailAndPasswordImpl value,
          $Res Function(_$CreateUserWithEmailAndPasswordImpl) then) =
      __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserWithEmailAndPasswordImpl>
    implements _$$CreateUserWithEmailAndPasswordImplCopyWith<$Res> {
  __$$CreateUserWithEmailAndPasswordImplCopyWithImpl(
      _$CreateUserWithEmailAndPasswordImpl _value,
      $Res Function(_$CreateUserWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserWithEmailAndPasswordImpl(
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

class _$CreateUserWithEmailAndPasswordImpl
    implements CreateUserWithEmailAndPassword {
  const _$CreateUserWithEmailAndPasswordImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUserWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => __$$CreateUserWithEmailAndPasswordImplCopyWithImpl<
          _$CreateUserWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return createUserWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) {
    return createUserWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) {
    return createUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) {
    return createUserWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class CreateUserWithEmailAndPassword implements AuthEvent {
  const factory CreateUserWithEmailAndPassword(
          final String email, final String password) =
      _$CreateUserWithEmailAndPasswordImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$CreateUserWithEmailAndPasswordImplCopyWith<
          _$CreateUserWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordImplCopyWith(
          _$SignInWithEmailAndPasswordImpl value,
          $Res Function(_$SignInWithEmailAndPasswordImpl) then) =
      __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailAndPasswordImpl>
    implements _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordImplCopyWithImpl(
      _$SignInWithEmailAndPasswordImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailAndPasswordImpl(
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

class _$SignInWithEmailAndPasswordImpl implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPasswordImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => __$$SignInWithEmailAndPasswordImplCopyWithImpl<
          _$SignInWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword(
          final String email, final String password) =
      _$SignInWithEmailAndPasswordImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() signInWithCredential,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? signInWithCredential,
    TResult? Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? signInWithCredential,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAuth value) init,
    required TResult Function(SignInWithCredential value) signInWithCredential,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAuth value)? init,
    TResult? Function(SignInWithCredential value)? signInWithCredential,
    TResult? Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult? Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAuth value)? init,
    TResult Function(SignInWithCredential value)? signInWithCredential,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$IsSignedImplCopyWith<$Res> {
  factory _$$IsSignedImplCopyWith(
          _$IsSignedImpl value, $Res Function(_$IsSignedImpl) then) =
      __$$IsSignedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsSignedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IsSignedImpl>
    implements _$$IsSignedImplCopyWith<$Res> {
  __$$IsSignedImplCopyWithImpl(
      _$IsSignedImpl _value, $Res Function(_$IsSignedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsSignedImpl implements _IsSigned {
  const _$IsSignedImpl();

  @override
  String toString() {
    return 'AuthState.isSigned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsSignedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) {
    return isSigned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) {
    return isSigned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (isSigned != null) {
      return isSigned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) {
    return isSigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) {
    return isSigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (isSigned != null) {
      return isSigned(this);
    }
    return orElse();
  }
}

abstract class _IsSigned implements AuthState {
  const factory _IsSigned() = _$IsSignedImpl;
}

/// @nodoc
abstract class _$$IsNotSignedImplCopyWith<$Res> {
  factory _$$IsNotSignedImplCopyWith(
          _$IsNotSignedImpl value, $Res Function(_$IsNotSignedImpl) then) =
      __$$IsNotSignedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsNotSignedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IsNotSignedImpl>
    implements _$$IsNotSignedImplCopyWith<$Res> {
  __$$IsNotSignedImplCopyWithImpl(
      _$IsNotSignedImpl _value, $Res Function(_$IsNotSignedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsNotSignedImpl implements _IsNotSigned {
  const _$IsNotSignedImpl();

  @override
  String toString() {
    return 'AuthState.isNotSigned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsNotSignedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) {
    return isNotSigned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) {
    return isNotSigned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (isNotSigned != null) {
      return isNotSigned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) {
    return isNotSigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) {
    return isNotSigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (isNotSigned != null) {
      return isNotSigned(this);
    }
    return orElse();
  }
}

abstract class _IsNotSigned implements AuthState {
  const factory _IsNotSigned() = _$IsNotSignedImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'AuthState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSigned,
    required TResult Function() isNotSigned,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSigned,
    TResult? Function()? isNotSigned,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSigned,
    TResult Function()? isNotSigned,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSigned value) isSigned,
    required TResult Function(_IsNotSigned value) isNotSigned,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSigned value)? isSigned,
    TResult? Function(_IsNotSigned value)? isNotSigned,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSigned value)? isSigned,
    TResult Function(_IsNotSigned value)? isNotSigned,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AuthState {
  const factory _Failed() = _$FailedImpl;
}
