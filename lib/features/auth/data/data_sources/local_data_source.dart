import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class AuthLocalDataSource {
  Future<String?> getToken ();
  Future<void> saveToken(String? token);
}
class AuthImplLocalDataSource implements AuthLocalDataSource {
  String tokenKey = "key";

  @override
  Future<String?> getToken() async{
    return await storage.read(key:tokenKey);
  }

  @override
  Future<void> saveToken(String? token) async {
    return await storage.write(key: tokenKey, value: token);
  }



  final storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));


}