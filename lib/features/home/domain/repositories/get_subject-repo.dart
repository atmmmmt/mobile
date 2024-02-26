import 'package:atmtha_mobile/core/error/failure.dart';
import 'package:atmtha_mobile/features/get_subject/domain/entites/get_subject_entites.dart';
import 'package:atmtha_mobile/features/home/domain/entities/getcellcenters.dart';
import 'package:dartz/dartz.dart';

abstract class DomainRepo{
  Future<Either<Failure,List<GetSubjectEntities>>> getAllSubject();
  Future<Either<Failure,List<GetCellCentersEntities>>> getAllCellCenters();

}