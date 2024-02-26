import '../../domain/entities/getcellcenters.dart';

class GetCellCentersModel extends GetCellCentersEntities {
  const GetCellCentersModel(
      {required String governorate, required String name, required String adders, required String phoneNumber})
      : super(governorate: governorate,
      name: name,
      adders: adders,
      phoneNumber: phoneNumber);

  factory GetCellCentersModel .fromjson(Map<String, dynamic> json) {
    return GetCellCentersModel(
        governorate: json['governorate:'],
        name: json['name'],
        adders: json[' adders'],
        phoneNumber: json[' phoneNumber'],
    );
        }

  Map<String, dynamic> toJson() {
    return {
      'governorate': governorate,
      'name': name,
      'adders':   adders,
      'phoneNumber':   phoneNumber,

    };
  }
}