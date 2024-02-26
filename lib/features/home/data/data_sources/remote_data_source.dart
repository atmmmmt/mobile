
import 'dart:convert';

import 'package:atmtha_mobile/features/get_subject/data_layer/model/get_all_subject_model.dart';
import'package:http/http.dart'as http;

import '../../../../core/error/exceptions.dart';
import '../models/ger_cell_center_model.dart';

abstract class  RemoteDataSource{
  Future<List<GetAllSubjectModel>> getAllSubject();
  Future<List< GetCellCentersModel>> getAllCenters();

}
  String  BaseUrl="";

class RemoteDataSourceImp implements RemoteDataSource{
final http.Client client;

  RemoteDataSourceImp({required this.client});
  @override
  Future<List<GetAllSubjectModel>> getAllSubject() async {
    final response= await client.get(Uri.parse(BaseUrl+''));

    if (response.statusCode == 200) {
      final List decodedJson = json.decode(response.body) as List;
      final List<GetAllSubjectModel> postModels = decodedJson
          .map<GetAllSubjectModel>((jsonPostModel) => GetAllSubjectModel.fromjson(jsonPostModel))
          .toList();

      return postModels;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<GetCellCentersModel>> getAllCenters() async{
    final response= await client.get(Uri.parse(BaseUrl+''));
    if (response.statusCode == 200) {
      final List decodedJson = json.decode(response.body) as List;
      final List<GetCellCentersModel> cellCentersModels  = decodedJson
          .map<GetCellCentersModel >((jsonPostModel) => GetCellCentersModel.fromjson(jsonPostModel))
          .toList();
      return cellCentersModels;
    } else {
      throw ServerException();
    }
  }
}