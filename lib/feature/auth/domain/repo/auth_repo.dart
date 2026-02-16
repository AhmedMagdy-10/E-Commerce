import 'package:dartz/dartz.dart';
import 'package:fruits_hup/core/errors/failures.dart';

import '../entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword({
    String email,
    String password,
  });
}
