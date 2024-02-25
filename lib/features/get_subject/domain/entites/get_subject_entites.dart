import 'package:equatable/equatable.dart';

class GetSubjectEntities extends Equatable{
  final String subjectName;
  final String subjectPicture;

  const GetSubjectEntities(this.subjectName, this.subjectPicture);
  @override
  List<Object?> get props => [subjectName,subjectPicture];

}