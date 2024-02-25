

import 'package:atmtha_mobile/core/error/exceptions.dart';
import 'package:atmtha_mobile/features/get_subject/data_layer/model/get_all_subject_model.dart';
import 'package:dartz/dartz.dart';


import '../../../../core/error/failure.dart';
import '../../../../network/networkinfo.dart';
import '../../domain/entites/get_subject_entites.dart';
import '../../domain/repo/get_subject-repo.dart';
import '../data_sources/local_data_source.dart';
import '../data_sources/remote_data_source.dart';

class GetAllSubjectImplements implements RepoGetSubject{
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GetAllSubjectImplements(this.networkInfo, {required this.remoteDataSource, required this.localDataSource});
  @override
  Future<Either<Failure, List<GetSubjectEntities>>> getAllSubject() async{
    if(await networkInfo.isConnected){
      try {
        final remoteSubject= await remoteDataSource.getAllSubject();
        localDataSource.cache(remoteSubject );
        return Right(remoteSubject);
      } on ServerException{
         left(ServerFailure());
      }
    }else{
      try {
         final localSubject=  await localDataSource.getCached();
         localDataSource.getCached();
         return Right(localSubject);
      } on EmptyCacheException {
         left(CacheEmptyFailure());
      }
    }

    throw UnimplementedError();
  }
}