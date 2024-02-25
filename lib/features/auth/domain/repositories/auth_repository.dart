import 'package:atmtha_mobile/core/errors/failuer.dart';
import 'package:atmtha_mobile/features/auth/domain/entities/auth_entitie.dart';
import 'package:atmtha_mobile/features/auth/domain/use_cases/sign_up.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> signIn();
  Future<Either<Failure, String>> signUp(SignUpParams signUpParams);
  Future<Either<Failure, String>> signOut();
}
