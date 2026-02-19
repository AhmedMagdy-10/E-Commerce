import 'package:fruits_hup/core/services/firebase_auth_service.dart';
import 'package:fruits_hup/feature/auth/data/repos/auth_repo_imple.dart';
import 'package:fruits_hup/feature/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImple(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
