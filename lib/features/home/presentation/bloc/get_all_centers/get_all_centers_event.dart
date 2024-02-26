part of 'get_all_centers_bloc.dart';

@immutable
abstract class GetAllCentersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllCellCenters extends GetAllCentersEvent {}
class RefreshCellCenters extends GetAllCentersEvent {}