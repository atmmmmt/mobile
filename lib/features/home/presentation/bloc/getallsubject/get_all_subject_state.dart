part of 'get_all_subject_bloc.dart';

@immutable
abstract class GetAllSubjectState extends Equatable{
  @override
  List<Object?> get props => [];
}

class GetAllSubjectInitial extends GetAllSubjectState {
  @override
  List<Object?> get props => throw UnimplementedError();
}
class LoadingGetAllSubjectState extends GetAllSubjectState{}
class SuccessGetAllSubjectState extends GetAllSubjectState{
  final List<GetSubjectEntities> subjects;

  SuccessGetAllSubjectState({required this.subjects});
  @override
  List<Object?> get props => [subjects];
}
class FeildGetAllSubjectState extends GetAllSubjectState{
final String message;

  FeildGetAllSubjectState({required this.message});
@override
List<Object?> get props => [message];
}