import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../get_subject/presention/bloc/get_all_subject_bloc.dart';
import '../../../widgets/listviewhome.dart';
import '../../../widgets/messegedesplay.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  static String name = "home_page_screen";
  static String path = "/home_page_screen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllSubjectBloc(getAllSubjects: null)..add(GetAllSubject()),
      child: BlocBuilder<GetAllSubjectBloc, GetAllSubjectState>(
        builder: (context, state) {
          if (state is LoadingGetAllSubjectState)
            return Center(child: CircularProgressIndicator());
          else if (state is SuccessGetAllSubjectState) {
            return ListViewHome(subjects: state.subjects);
          } else if (state is FeildGetAllSubjectState)
            return MessageDisplay(message: state.message,);
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
