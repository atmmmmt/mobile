import 'package:atmtha_mobile/core/errors/app_exceptions.dart';
import 'package:atmtha_mobile/features/auth/data/models/auth_model.dart';
import 'package:atmtha_mobile/features/auth/domain/use_cases/sign_up.dart';
import 'package:dio/dio.dart';

import '../../domain/use_cases/sign_in.dart';

abstract class AuthRemoteDataSource {
  AuthRemoteDataSource();

  Future<String> signIn(SignInParams signInParams);
  Future<String> signUp(SignUpParams signUpParams);
  Future<String> signOut();
}

const BASE_URL = "";

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<String> signUp(SignUpParams signUpParams) async {
    final data = {
      "phoneNumber": signUpParams.phoneNumber,
      "password": signUpParams.password,
      "passwordAgain": signUpParams.passwordAgain,
      "gender": signUpParams.gender,
    };
    final response = await dio.post(
      "$BASE_URL/",
      data: data,
    );

    if (response.statusCode == 200) {
      return await Future.value(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> signIn(SignInParams signInParams) async {
    final data = {
      "phoneNumber": signInParams.phoneNumber,
      "password": signInParams.password,
    };
    final response = await dio.post(
      "$BASE_URL/",
      data: data,
      
    );

    if (response.statusCode == 200) {
      return await Future.value(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
