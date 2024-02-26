import 'dart:convert';

import 'package:atmtha_mobile/features/get_subject/data_layer/model/get_all_subject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../models/ger_cell_center_model.dart';

abstract class LocalDataSource {
  Future<List<GetAllSubjectModel>> getCachedSubjects();

  Future<Unit> cacheSubjects(List<GetAllSubjectModel> getAllSubjectModel);

  Future<List<GetCellCentersModel>> getCachedCenters();

  Future<Unit> cacheCenters(List<GetCellCentersModel> getAllCellCentersModel);
}

class SubLocalDataSourceImp implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  SubLocalDataSourceImp({required this.sharedPreferences});

  @override
  Future<Unit> cacheSubjects(List<GetAllSubjectModel> getAllSubjectModel) {
    List subjectModelsToJson = getAllSubjectModel
        .map<Map<String, dynamic>>(
            (getAllSubjectModel) => getAllSubjectModel.toJson())
        .toList();
    sharedPreferences.setString(
        "CACHED_SUBJECT", subjectModelsToJson as String);
    return Future.value(unit);
  }

  @override
  Future<List<GetAllSubjectModel>> getCachedSubjects() {
    final jsonString = sharedPreferences.getString("CACHED_SUBJECT");
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<GetAllSubjectModel> jsonToPostModels = decodeJsonData
          .map<GetAllSubjectModel>(
              (jsonPostModel) => GetAllSubjectModel.fromjson(jsonPostModel))
          .toList();
      return Future.value(jsonToPostModels);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<Unit> cacheCenters(List<GetCellCentersModel> getAllCellCentersModel) {
    List cellCentersModelsToJson = getAllCellCentersModel
        .map<Map<String, dynamic>>(
            (getAllCellCentersModel) => getAllCellCentersModel.toJson())
        .toList();
    sharedPreferences.setString(
        "CACHED_CELL_CENTERS", cellCentersModelsToJson as String);
    return Future.value(unit);
  }

  @override
  Future<List<GetCellCentersModel>> getCachedCenters() {
    final jsonString = sharedPreferences.getString("CACHED_CELL_CENTERS");
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<GetCellCentersModel> jsonToCellCentersModels = decodeJsonData
          .map<GetCellCentersModel>((jsonToCellCentersModels) =>
              GetCellCentersModel.fromjson(jsonToCellCentersModels))
          .toList();
      return Future.value(jsonToCellCentersModels);
    } else {
      throw EmptyCacheException();
    }
  }
}
