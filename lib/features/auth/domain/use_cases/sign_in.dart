import 'package:atmtha_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';

class SignIn {
  final AuthRepository authRepository;

  SignIn(this.authRepository);

  Future<Either<Failure, String>> call(SignInParams signInParams) async {
    return await authRepository.signIn(signInParams);
  }

}
class SignInParams {
  final String phoneNumber;
  final String password;
  SignInParams(
      {required this.phoneNumber,
        required this.password,
        });
  Map<String, dynamic> get map => {
    "phoneNumber": phoneNumber,
    "password": password,
  };
}