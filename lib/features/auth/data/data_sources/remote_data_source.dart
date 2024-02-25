import 'package:atmtha_mobile/core/errors/app_exceptions.dart';
import 'package:atmtha_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


abstract class AuthRemoteDataSource {
  AuthRemoteDataSource();

  Future<String> signIn();
  Future<String> signUp();
  Future<String> signOut();
}
const BASE_URL = "";

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio ;

  AuthRemoteDataSourceImpl({required this.dio});
  @override
  Future<String> signUp() async {
   final response = await dio.post("$BASE_URL/");
   if(response.statusCode ==200){
    return await Future.value(response.data) ;
   }
   else{
     throw ServerException();
   }
  }
  @override
  Future<String> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<String> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }


}
