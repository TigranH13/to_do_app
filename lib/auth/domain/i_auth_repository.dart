abstract class IAuthRepository {
  Future signInWithGoogle();
  Future createUserWithEmailAndPassword(String email, String password);

  Future signInWithEmailAndPassword(String email, String password);
  Future signOut();
}
