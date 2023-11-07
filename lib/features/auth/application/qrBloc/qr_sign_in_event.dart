part of 'qr_sign_in_bloc.dart';

@freezed
class QrSignInEvent with _$QrSignInEvent {
  const factory QrSignInEvent.saveAuthCredentialInFirebase({
    required String authCredentialId,
  }) = SaveAuthCredentialInFirebase;

  const factory QrSignInEvent.listenForAuthCredentialData({
    required String authCredentialId,
  }) = ListenForAuthCredentialData;

  const factory QrSignInEvent.emitQrSignedState() = EmitQrSignedState;
}
