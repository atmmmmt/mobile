import 'package:atmtha_mobile/features/auth/domain/entities/auth_entitie.dart';

class UserModel extends UserEntity {
  const UserModel({required super.token});
  factory UserModel.fromJson (Map<String , dynamic> json){
    return UserModel(token:json ["token"]);
  }
}