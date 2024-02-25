import 'package:atmtha_mobile/core/errors/app_exceptions.dart';
import 'package:atmtha_mobile/core/errors/failuer.dart';
import 'package:atmtha_mobile/features/auth/data/data_sources/local_data_source.dart';
import 'package:atmtha_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/network.dart';
import '../data_sources/remote_data_source.dart';

typedef Future<String> SignInOrSignUpOrSignOut(params);


class IAuthRepository implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final NetworkInfo networkInfo;

  IAuthRepository(
      {required this.authRemoteDataSource,
      required this.networkInfo,
      required this.authLocalDataSource});

  @override
  Future<Either<Failure, String>> signIn(signInParams) async {
    return await _getMessage((params) {
      return authRemoteDataSource.signIn();
    });
  }

  @override
  Future<Either<Failure, String>> signOut() async {
    return await _getMessage((params) {
      return authRemoteDataSource.signIn();
    });
  }

  @override
  Future<Either<Failure, String>> signUp(signUpParams) async {
    return await _getMessage((params) {
      authLocalDataSource.saveToken("token");
      return authRemoteDataSource.signUp();
    });
  }

  Future<Either<Failure, String>> _getMessage(
      SignInOrSignUpOrSignOut signInOrSignUpOrSignOut) async {
    if (await networkInfo.isConnected) {
      try {
        return right("");
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      return left(OfflineFailure());
    }
  }
}
