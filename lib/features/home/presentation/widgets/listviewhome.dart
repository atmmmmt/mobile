import 'package:flutter/material.dart';

import '../../../get_subject/domain/entites/get_subject_entites.dart';

class ListViewHome extends StatelessWidget {
  ListViewHome({Key? key, required  this.subjects}) : super(key: key);
  List<GetSubjectEntities> subjects;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subjects.length,
        itemBuilder: (context, index) {
      return Container(
        height: 200,
        width: 100,
        child: Text("${subjects[index].subjectName}"),
      );
    });
  }
}
