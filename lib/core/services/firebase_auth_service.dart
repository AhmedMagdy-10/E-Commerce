import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hup/core/errors/custom_expection.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String password,
    required String email,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExpection(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExpection(
          message: 'The account already exists for that email.',
        );
      } else {
        throw CustomExpection(
          message: 'An Error Occurred,please try again later',
        );
      }
    } catch (e) {
      throw CustomExpection(
        message: 'An Error Occurred,please try again later',
      );
    }
  }
}
