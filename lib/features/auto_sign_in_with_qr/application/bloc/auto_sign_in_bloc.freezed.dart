// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AutoSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(Map<dynamic, dynamic> authCredentialMap)
        signInWithAuthCredential,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(SignInWithAuthCredential value)
        signInWithAuthCredential,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoSignInEventCopyWith<$Res> {
  factory $AutoSignInEventCopyWith(
          AutoSignInEvent value, $Res Function(AutoSignInEvent) then) =
      _$AutoSignInEventCopyWithImpl<$Res, AutoSignInEvent>;
}

/// @nodoc
class _$AutoSignInEventCopyWithImpl<$Res, $Val extends AutoSignInEvent>
    implements $AutoSignInEventCopyWith<$Res> {
  _$AutoSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveAuthCredentialInFirebaseImplCopyWith<$Res> {
  factory _$$SaveAuthCredentialInFirebaseImplCopyWith(
          _$SaveAuthCredentialInFirebaseImpl value,
          $Res Function(_$SaveAuthCredentialInFirebaseImpl) then) =
      __$$SaveAuthCredentialInFirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String authCredentialId});
}

/// @nodoc
class __$$SaveAuthCredentialInFirebaseImplCopyWithImpl<$Res>
    extends _$AutoSignInEventCopyWithImpl<$Res,
        _$SaveAuthCredentialInFirebaseImpl>
    implements _$$SaveAuthCredentialInFirebaseImplCopyWith<$Res> {
  __$$SaveAuthCredentialInFirebaseImplCopyWithImpl(
      _$SaveAuthCredentialInFirebaseImpl _value,
      $Res Function(_$SaveAuthCredentialInFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCredentialId = null,
  }) {
    return _then(_$SaveAuthCredentialInFirebaseImpl(
      authCredentialId: null == authCredentialId
          ? _value.authCredentialId
          : authCredentialId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveAuthCredentialInFirebaseImpl
    implements SaveAuthCredentialInFirebase {
  const _$SaveAuthCredentialInFirebaseImpl({required this.authCredentialId});

  @override
  final String authCredentialId;

  @override
  String toString() {
    return 'AutoSignInEvent.saveAuthCredentialInFirebase(authCredentialId: $authCredentialId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAuthCredentialInFirebaseImpl &&
            (identical(other.authCredentialId, authCredentialId) ||
                other.authCredentialId == authCredentialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authCredentialId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAuthCredentialInFirebaseImplCopyWith<
          _$SaveAuthCredentialInFirebaseImpl>
      get copyWith => __$$SaveAuthCredentialInFirebaseImplCopyWithImpl<
          _$SaveAuthCredentialInFirebaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(Map<dynamic, dynamic> authCredentialMap)
        signInWithAuthCredential,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
  }) {
    return saveAuthCredentialInFirebase(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
  }) {
    return saveAuthCredentialInFirebase?.call(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (saveAuthCredentialInFirebase != null) {
      return saveAuthCredentialInFirebase(authCredentialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(SignInWithAuthCredential value)
        signInWithAuthCredential,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
  }) {
    return saveAuthCredentialInFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
  }) {
    return saveAuthCredentialInFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (saveAuthCredentialInFirebase != null) {
      return saveAuthCredentialInFirebase(this);
    }
    return orElse();
  }
}

abstract class SaveAuthCredentialInFirebase implements AutoSignInEvent {
  const factory SaveAuthCredentialInFirebase(
          {required final String authCredentialId}) =
      _$SaveAuthCredentialInFirebaseImpl;

  String get authCredentialId;
  @JsonKey(ignore: true)
  _$$SaveAuthCredentialInFirebaseImplCopyWith<
          _$SaveAuthCredentialInFirebaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithAuthCredentialImplCopyWith<$Res> {
  factory _$$SignInWithAuthCredentialImplCopyWith(
          _$SignInWithAuthCredentialImpl value,
          $Res Function(_$SignInWithAuthCredentialImpl) then) =
      __$$SignInWithAuthCredentialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> authCredentialMap});
}

/// @nodoc
class __$$SignInWithAuthCredentialImplCopyWithImpl<$Res>
    extends _$AutoSignInEventCopyWithImpl<$Res, _$SignInWithAuthCredentialImpl>
    implements _$$SignInWithAuthCredentialImplCopyWith<$Res> {
  __$$SignInWithAuthCredentialImplCopyWithImpl(
      _$SignInWithAuthCredentialImpl _value,
      $Res Function(_$SignInWithAuthCredentialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCredentialMap = null,
  }) {
    return _then(_$SignInWithAuthCredentialImpl(
      authCredentialMap: null == authCredentialMap
          ? _value._authCredentialMap
          : authCredentialMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$SignInWithAuthCredentialImpl implements SignInWithAuthCredential {
  const _$SignInWithAuthCredentialImpl(
      {required final Map<dynamic, dynamic> authCredentialMap})
      : _authCredentialMap = authCredentialMap;

  final Map<dynamic, dynamic> _authCredentialMap;
  @override
  Map<dynamic, dynamic> get authCredentialMap {
    if (_authCredentialMap is EqualUnmodifiableMapView)
      return _authCredentialMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_authCredentialMap);
  }

  @override
  String toString() {
    return 'AutoSignInEvent.signInWithAuthCredential(authCredentialMap: $authCredentialMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithAuthCredentialImpl &&
            const DeepCollectionEquality()
                .equals(other._authCredentialMap, _authCredentialMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_authCredentialMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithAuthCredentialImplCopyWith<_$SignInWithAuthCredentialImpl>
      get copyWith => __$$SignInWithAuthCredentialImplCopyWithImpl<
          _$SignInWithAuthCredentialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(Map<dynamic, dynamic> authCredentialMap)
        signInWithAuthCredential,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
  }) {
    return signInWithAuthCredential(authCredentialMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
  }) {
    return signInWithAuthCredential?.call(authCredentialMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (signInWithAuthCredential != null) {
      return signInWithAuthCredential(authCredentialMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(SignInWithAuthCredential value)
        signInWithAuthCredential,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
  }) {
    return signInWithAuthCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
  }) {
    return signInWithAuthCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (signInWithAuthCredential != null) {
      return signInWithAuthCredential(this);
    }
    return orElse();
  }
}

abstract class SignInWithAuthCredential implements AutoSignInEvent {
  const factory SignInWithAuthCredential(
          {required final Map<dynamic, dynamic> authCredentialMap}) =
      _$SignInWithAuthCredentialImpl;

  Map<dynamic, dynamic> get authCredentialMap;
  @JsonKey(ignore: true)
  _$$SignInWithAuthCredentialImplCopyWith<_$SignInWithAuthCredentialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForAuthCredentialDataImplCopyWith<$Res> {
  factory _$$ListenForAuthCredentialDataImplCopyWith(
          _$ListenForAuthCredentialDataImpl value,
          $Res Function(_$ListenForAuthCredentialDataImpl) then) =
      __$$ListenForAuthCredentialDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String authCredentialId});
}

/// @nodoc
class __$$ListenForAuthCredentialDataImplCopyWithImpl<$Res>
    extends _$AutoSignInEventCopyWithImpl<$Res,
        _$ListenForAuthCredentialDataImpl>
    implements _$$ListenForAuthCredentialDataImplCopyWith<$Res> {
  __$$ListenForAuthCredentialDataImplCopyWithImpl(
      _$ListenForAuthCredentialDataImpl _value,
      $Res Function(_$ListenForAuthCredentialDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCredentialId = null,
  }) {
    return _then(_$ListenForAuthCredentialDataImpl(
      authCredentialId: null == authCredentialId
          ? _value.authCredentialId
          : authCredentialId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForAuthCredentialDataImpl implements ListenForAuthCredentialData {
  const _$ListenForAuthCredentialDataImpl({required this.authCredentialId});

  @override
  final String authCredentialId;

  @override
  String toString() {
    return 'AutoSignInEvent.listenForAuthCredentialData(authCredentialId: $authCredentialId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForAuthCredentialDataImpl &&
            (identical(other.authCredentialId, authCredentialId) ||
                other.authCredentialId == authCredentialId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authCredentialId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForAuthCredentialDataImplCopyWith<_$ListenForAuthCredentialDataImpl>
      get copyWith => __$$ListenForAuthCredentialDataImplCopyWithImpl<
          _$ListenForAuthCredentialDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(Map<dynamic, dynamic> authCredentialMap)
        signInWithAuthCredential,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
  }) {
    return listenForAuthCredentialData(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
  }) {
    return listenForAuthCredentialData?.call(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(Map<dynamic, dynamic> authCredentialMap)?
        signInWithAuthCredential,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (listenForAuthCredentialData != null) {
      return listenForAuthCredentialData(authCredentialId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(SignInWithAuthCredential value)
        signInWithAuthCredential,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
  }) {
    return listenForAuthCredentialData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
  }) {
    return listenForAuthCredentialData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(SignInWithAuthCredential value)? signInWithAuthCredential,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    required TResult orElse(),
  }) {
    if (listenForAuthCredentialData != null) {
      return listenForAuthCredentialData(this);
    }
    return orElse();
  }
}

abstract class ListenForAuthCredentialData implements AutoSignInEvent {
  const factory ListenForAuthCredentialData(
          {required final String authCredentialId}) =
      _$ListenForAuthCredentialDataImpl;

  String get authCredentialId;
  @JsonKey(ignore: true)
  _$$ListenForAuthCredentialDataImplCopyWith<_$ListenForAuthCredentialDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutoSignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoSignInStateCopyWith<$Res> {
  factory $AutoSignInStateCopyWith(
          AutoSignInState value, $Res Function(AutoSignInState) then) =
      _$AutoSignInStateCopyWithImpl<$Res, AutoSignInState>;
}

/// @nodoc
class _$AutoSignInStateCopyWithImpl<$Res, $Val extends AutoSignInState>
    implements $AutoSignInStateCopyWith<$Res> {
  _$AutoSignInStateCopyWithImpl(this._value, this._then);

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
    extends _$AutoSignInStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AutoSignInState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AutoSignInState {
  const factory _Initial() = _$InitialImpl;
}
