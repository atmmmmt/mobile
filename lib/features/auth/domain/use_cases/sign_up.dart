import 'package:atmtha_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';

class SignUp {
  final AuthRepository authRepository;

  SignUp(this.authRepository);
  Future<Either<Failure, String>> call(SignUpParams signUpParams) async {
    return await authRepository.signUp(signUpParams);
  }
}

class SignUpParams {
  final String phoneNumber;
  final String password;
  final String passwordAgain;
  final String gender;
  SignUpParams(
      {required this.phoneNumber,
      required this.password,
      required this.passwordAgain,
      required this.gender});
  Map<String, dynamic> get map => {
        "phoneNumber": phoneNumber,
        "gender": gender,
        "password": password,
        "passwordAgain": passwordAgain
      };
}
