import 'package:atmtha_mobile/features/home/domain/repositories/get_subject-repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/getcellcenters.dart';

class GetCellCentersUseCase {
  final DomainRepo domainRepo;

  GetCellCentersUseCase({required this.domainRepo});

  Future<Either<Failure, List<GetCellCentersEntities>>>call(){
    return domainRepo.getAllCellCenters();
  }

}
