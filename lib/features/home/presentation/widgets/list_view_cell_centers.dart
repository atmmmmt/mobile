import 'package:flutter/material.dart';

import '../../../get_subject/domain/entites/get_subject_entites.dart';
import '../../domain/entities/getcellcenters.dart';

class ListViewCellCenters extends StatelessWidget {
  ListViewCellCenters({Key? key, required  this.cellCenters}) : super(key: key);
  List<GetCellCentersEntities> cellCenters;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cellCenters.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 100,
            child: Text("${cellCenters[index].name}"),
          );
        });
  }
}
