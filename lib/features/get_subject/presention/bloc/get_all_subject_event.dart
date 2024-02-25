part of 'get_all_subject_bloc.dart';

abstract class GetAllSubjectEvent  extends Equatable{
  @override
  List<Object?> get props => [];
}
class GetAllSubject extends GetAllSubjectEvent{}
class RefreshSubject extends GetAllSubjectEvent{}