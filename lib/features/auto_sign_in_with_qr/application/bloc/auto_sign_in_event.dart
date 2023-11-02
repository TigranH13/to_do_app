part of 'auto_sign_in_bloc.dart';

@freezed
class AutoSignInEvent with _$AutoSignInEvent {
  const factory AutoSignInEvent.saveAuthCredentialInFirebase(
      {required String authCredentialId}) = SaveAuthCredentialInFirebase;

  const factory AutoSignInEvent.signInWithAuthCredential(
      {required Map authCredentialMap}) = SignInWithAuthCredential;

  const factory AutoSignInEvent.listenForAuthCredentialData(
      {required String authCredentialId}) = ListenForAuthCredentialData;
}
