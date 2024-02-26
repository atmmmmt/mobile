import 'package:atmtha_mobile/core/error/failure.dart';
import 'package:atmtha_mobile/features/get_subject/domain/entites/get_subject_entites.dart';
import 'package:dartz/dartz.dart';

abstract class RepoGetSubject{
  Future<Either<Failure,List<GetSubjectEntities>>> getAllSubject();
}