import 'dart:convert';

import 'package:atmtha_mobile/features/get_subject/data_layer/model/get_all_subject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';

abstract class LocalDataSource {
  Future<List<GetAllSubjectModel>> getCached();

  Future<Unit> cache(List<GetAllSubjectModel> getAllSubjectModel);
}

class LocalDataSourceImp implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImp({required this.sharedPreferences});

  @override
  Future<Unit> cache(List<GetAllSubjectModel> getAllSubjectModel) {
    List postModelsToJson = getAllSubjectModel
        .map<Map<String, dynamic>>(
            (getAllSubjectModel) => getAllSubjectModel.toJson())
        .toList();
    sharedPreferences.setString("CACHED_POST", postModelsToJson as String);
    return Future.value(unit);
  }

  @override
  Future<List<GetAllSubjectModel>> getCached() {
    final jsonString = sharedPreferences.getString("CACHED_POST");
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<GetAllSubjectModel> jsonToPostModels = decodeJsonData
          .map<GetAllSubjectModel>((jsonPostModel) => GetAllSubjectModel.fromjson(jsonPostModel))
          .toList();
      return Future.value(jsonToPostModels);
    } else {
      throw EmptyCacheException();
    }

  }
}
