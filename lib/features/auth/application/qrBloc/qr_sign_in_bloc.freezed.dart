// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
    required TResult Function() emitQrSignedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
    TResult? Function()? emitQrSignedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    TResult Function()? emitQrSignedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
    required TResult Function(EmitQrSignedState value) emitQrSignedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult? Function(EmitQrSignedState value)? emitQrSignedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult Function(EmitQrSignedState value)? emitQrSignedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrSignInEventCopyWith<$Res> {
  factory $QrSignInEventCopyWith(
          QrSignInEvent value, $Res Function(QrSignInEvent) then) =
      _$QrSignInEventCopyWithImpl<$Res, QrSignInEvent>;
}

/// @nodoc
class _$QrSignInEventCopyWithImpl<$Res, $Val extends QrSignInEvent>
    implements $QrSignInEventCopyWith<$Res> {
  _$QrSignInEventCopyWithImpl(this._value, this._then);

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
    extends _$QrSignInEventCopyWithImpl<$Res,
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
    return 'QrSignInEvent.saveAuthCredentialInFirebase(authCredentialId: $authCredentialId)';
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
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
    required TResult Function() emitQrSignedState,
  }) {
    return saveAuthCredentialInFirebase(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
    TResult? Function()? emitQrSignedState,
  }) {
    return saveAuthCredentialInFirebase?.call(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    TResult Function()? emitQrSignedState,
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
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
    required TResult Function(EmitQrSignedState value) emitQrSignedState,
  }) {
    return saveAuthCredentialInFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult? Function(EmitQrSignedState value)? emitQrSignedState,
  }) {
    return saveAuthCredentialInFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult Function(EmitQrSignedState value)? emitQrSignedState,
    required TResult orElse(),
  }) {
    if (saveAuthCredentialInFirebase != null) {
      return saveAuthCredentialInFirebase(this);
    }
    return orElse();
  }
}

abstract class SaveAuthCredentialInFirebase implements QrSignInEvent {
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
    extends _$QrSignInEventCopyWithImpl<$Res, _$ListenForAuthCredentialDataImpl>
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
    return 'QrSignInEvent.listenForAuthCredentialData(authCredentialId: $authCredentialId)';
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
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
    required TResult Function() emitQrSignedState,
  }) {
    return listenForAuthCredentialData(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
    TResult? Function()? emitQrSignedState,
  }) {
    return listenForAuthCredentialData?.call(authCredentialId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    TResult Function()? emitQrSignedState,
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
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
    required TResult Function(EmitQrSignedState value) emitQrSignedState,
  }) {
    return listenForAuthCredentialData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult? Function(EmitQrSignedState value)? emitQrSignedState,
  }) {
    return listenForAuthCredentialData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult Function(EmitQrSignedState value)? emitQrSignedState,
    required TResult orElse(),
  }) {
    if (listenForAuthCredentialData != null) {
      return listenForAuthCredentialData(this);
    }
    return orElse();
  }
}

abstract class ListenForAuthCredentialData implements QrSignInEvent {
  const factory ListenForAuthCredentialData(
          {required final String authCredentialId}) =
      _$ListenForAuthCredentialDataImpl;

  String get authCredentialId;
  @JsonKey(ignore: true)
  _$$ListenForAuthCredentialDataImplCopyWith<_$ListenForAuthCredentialDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmitQrSignedStateImplCopyWith<$Res> {
  factory _$$EmitQrSignedStateImplCopyWith(_$EmitQrSignedStateImpl value,
          $Res Function(_$EmitQrSignedStateImpl) then) =
      __$$EmitQrSignedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmitQrSignedStateImplCopyWithImpl<$Res>
    extends _$QrSignInEventCopyWithImpl<$Res, _$EmitQrSignedStateImpl>
    implements _$$EmitQrSignedStateImplCopyWith<$Res> {
  __$$EmitQrSignedStateImplCopyWithImpl(_$EmitQrSignedStateImpl _value,
      $Res Function(_$EmitQrSignedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmitQrSignedStateImpl implements EmitQrSignedState {
  const _$EmitQrSignedStateImpl();

  @override
  String toString() {
    return 'QrSignInEvent.emitQrSignedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmitQrSignedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authCredentialId)
        saveAuthCredentialInFirebase,
    required TResult Function(String authCredentialId)
        listenForAuthCredentialData,
    required TResult Function() emitQrSignedState,
  }) {
    return emitQrSignedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult? Function(String authCredentialId)? listenForAuthCredentialData,
    TResult? Function()? emitQrSignedState,
  }) {
    return emitQrSignedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authCredentialId)? saveAuthCredentialInFirebase,
    TResult Function(String authCredentialId)? listenForAuthCredentialData,
    TResult Function()? emitQrSignedState,
    required TResult orElse(),
  }) {
    if (emitQrSignedState != null) {
      return emitQrSignedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveAuthCredentialInFirebase value)
        saveAuthCredentialInFirebase,
    required TResult Function(ListenForAuthCredentialData value)
        listenForAuthCredentialData,
    required TResult Function(EmitQrSignedState value) emitQrSignedState,
  }) {
    return emitQrSignedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult? Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult? Function(EmitQrSignedState value)? emitQrSignedState,
  }) {
    return emitQrSignedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveAuthCredentialInFirebase value)?
        saveAuthCredentialInFirebase,
    TResult Function(ListenForAuthCredentialData value)?
        listenForAuthCredentialData,
    TResult Function(EmitQrSignedState value)? emitQrSignedState,
    required TResult orElse(),
  }) {
    if (emitQrSignedState != null) {
      return emitQrSignedState(this);
    }
    return orElse();
  }
}

abstract class EmitQrSignedState implements QrSignInEvent {
  const factory EmitQrSignedState() = _$EmitQrSignedStateImpl;
}

/// @nodoc
mixin _$QrSignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSignedWithQr,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSignedWithQr,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSignedWithQr,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSignedWithQr value) isSignedWithQr,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrSignInStateCopyWith<$Res> {
  factory $QrSignInStateCopyWith(
          QrSignInState value, $Res Function(QrSignInState) then) =
      _$QrSignInStateCopyWithImpl<$Res, QrSignInState>;
}

/// @nodoc
class _$QrSignInStateCopyWithImpl<$Res, $Val extends QrSignInState>
    implements $QrSignInStateCopyWith<$Res> {
  _$QrSignInStateCopyWithImpl(this._value, this._then);

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
    extends _$QrSignInStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QrSignInState.initial()';
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
    required TResult Function() isSignedWithQr,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSignedWithQr,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSignedWithQr,
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
    required TResult Function(_IsSignedWithQr value) isSignedWithQr,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QrSignInState {
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
    extends _$QrSignInStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'QrSignInState.loading()';
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
    required TResult Function() isSignedWithQr,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSignedWithQr,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSignedWithQr,
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
    required TResult Function(_IsSignedWithQr value) isSignedWithQr,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QrSignInState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$IsSignedWithQrImplCopyWith<$Res> {
  factory _$$IsSignedWithQrImplCopyWith(_$IsSignedWithQrImpl value,
          $Res Function(_$IsSignedWithQrImpl) then) =
      __$$IsSignedWithQrImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsSignedWithQrImplCopyWithImpl<$Res>
    extends _$QrSignInStateCopyWithImpl<$Res, _$IsSignedWithQrImpl>
    implements _$$IsSignedWithQrImplCopyWith<$Res> {
  __$$IsSignedWithQrImplCopyWithImpl(
      _$IsSignedWithQrImpl _value, $Res Function(_$IsSignedWithQrImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsSignedWithQrImpl implements _IsSignedWithQr {
  const _$IsSignedWithQrImpl();

  @override
  String toString() {
    return 'QrSignInState.isSignedWithQr()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsSignedWithQrImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() isSignedWithQr,
    required TResult Function() failed,
  }) {
    return isSignedWithQr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSignedWithQr,
    TResult? Function()? failed,
  }) {
    return isSignedWithQr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSignedWithQr,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (isSignedWithQr != null) {
      return isSignedWithQr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsSignedWithQr value) isSignedWithQr,
    required TResult Function(_Failed value) failed,
  }) {
    return isSignedWithQr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult? Function(_Failed value)? failed,
  }) {
    return isSignedWithQr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (isSignedWithQr != null) {
      return isSignedWithQr(this);
    }
    return orElse();
  }
}

abstract class _IsSignedWithQr implements QrSignInState {
  const factory _IsSignedWithQr() = _$IsSignedWithQrImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$QrSignInStateCopyWithImpl<$Res, _$FailedImpl>
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
    return 'QrSignInState.failed()';
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
    required TResult Function() isSignedWithQr,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? isSignedWithQr,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? isSignedWithQr,
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
    required TResult Function(_IsSignedWithQr value) isSignedWithQr,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsSignedWithQr value)? isSignedWithQr,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements QrSignInState {
  const factory _Failed() = _$FailedImpl;
}
