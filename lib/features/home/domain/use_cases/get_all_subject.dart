import 'package:atmtha_mobile/core/error/failure.dart';
import 'package:atmtha_mobile/features/get_subject/data_layer/model/get_all_subject_model.dart';
import 'package:atmtha_mobile/features/get_subject/domain/entites/get_subject_entites.dart';
import 'package:atmtha_mobile/features/get_subject/domain/repo/get_subject-repo.dart';
import 'package:dartz/dartz.dart';

class GetAllSubjectUseCase{
  final RepoGetSubject repo;
  GetAllSubjectUseCase(this.repo);
  Future<Either<Failure,List<GetSubjectEntities>>> call()async {
    return await repo.getAllSubject();
  }

}