import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationDataSource {
  Future<void> login(String email, String password);

  Future<void> register(String email, String password, String confirmPassword);
}

class AuthenticationRemote extends AuthenticationDataSource {
  @override
  Future<void> login(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> register(
      String email, String password, String confirmPassword) async {
    if (password == confirmPassword) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    }
  }
}
