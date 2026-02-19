import 'package:dartz/dartz.dart';
import 'package:fruits_hup/core/errors/custom_expection.dart';
import 'package:fruits_hup/core/errors/failures.dart';
import 'package:fruits_hup/core/services/firebase_auth_service.dart';
import 'package:fruits_hup/feature/auth/data/models/user_model.dart';
import 'package:fruits_hup/feature/auth/domain/entites/user_entity.dart';
import 'package:fruits_hup/feature/auth/domain/repo/auth_repo.dart';

class AuthRepoImple extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImple({required this.firebaseAuthService});

  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        password: password,
        email: email,
      );
      return right(UserModel.formFirebase(user));
    } on CustomExpection catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(
        ServerFailure(message: 'حصل خطأ غير متوقع، يرجى المحاولة في وقت لاحق.'),
      );
    }
  }
}
