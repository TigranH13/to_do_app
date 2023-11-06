part of 'qr_sign_in_bloc.dart';

@freezed
class QrSignInState with _$QrSignInState {
  const factory QrSignInState.initial() = _Initial;

  const factory QrSignInState.loading() = _Loading;

  const factory QrSignInState.isSignedWithQr() = _IsSignedWithQr;

  const factory QrSignInState.failed() = _Failed;
}
