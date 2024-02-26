part of 'get_all_centers_bloc.dart';

@immutable
abstract class GetAllCentersState extends Equatable{
  @override
  List<Object?> get props => [];
}

class GetAllSubjectInitial extends GetAllCentersState {
  @override
  List<Object?> get props => throw UnimplementedError();
}
class LoadingGetAllCentersState extends GetAllCentersState{}
class SuccessGetAllCentersState extends GetAllCentersState{
  final List<GetCellCentersEntities> cellCenters;

  SuccessGetAllCentersState({required this.cellCenters});

  @override
  List<Object?> get props => [cellCenters];
}
class FeildGetAllCellCentersState extends GetAllCentersState{
  final String message;

  FeildGetAllCellCentersState({required this.message});
  @override
  List<Object?> get props => [message];
}
