import 'package:equatable/equatable.dart';

class GetCellCentersEntities extends Equatable{
  final String governorate;
  final String name;
  final String adders;
  final String phoneNumber;

  const GetCellCentersEntities({required this.governorate, required this.name, required this.adders, required this.phoneNumber});
  @override
  List<Object?> get props => throw UnimplementedError();
}
