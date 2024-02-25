import 'package:atmtha_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';

class SignIn {
  final AuthRepository authRepository;

  SignIn(this.authRepository);

  Future<Either<Failure, String>> call() async {
    return await authRepository.signIn();
  }

}