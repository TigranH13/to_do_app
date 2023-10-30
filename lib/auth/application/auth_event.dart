part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = InitAuth;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
  const factory AuthEvent.createUserWithEmailAndPassword(
      String email, String password) = CreateUserWithEmailAndPassword;
  const factory AuthEvent.signInWithEmailAndPassword(
      String email, String password) = SignInWithEmailAndPassword;

  const factory AuthEvent.signOut() = SignOut;
}
