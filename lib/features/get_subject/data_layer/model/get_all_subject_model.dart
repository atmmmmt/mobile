import 'package:atmtha_mobile/features/get_subject/domain/entites/get_subject_entites.dart';

class GetAllSubjectModel extends GetSubjectEntities {
  const GetAllSubjectModel({required subjectName, required subjectPicture})
      : super(subjectName, subjectPicture);

  factory GetAllSubjectModel.fromjson(Map<String, dynamic> json) {
    return GetAllSubjectModel(
        subjectName: json['subjectName'],
        subjectPicture: json['subjectPicture']);
  }
  Map<String, dynamic> toJson() {
    return {'subjectName': subjectName, 'subjectPicture': subjectPicture, };
  }
}
