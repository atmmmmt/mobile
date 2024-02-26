import 'package:atmtha_mobile/features/home/presentation/bloc/get_all_centers/get_all_centers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/list_view_cell_centers.dart';
import '../../../widgets/messegedesplay.dart';

class SellCenters extends StatelessWidget {
  const SellCenters({Key? key}) : super(key: key);
  static String name = "sell_centers_screen";
  static String path = "/sell_centers_screen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAllCentersBloc()..add(GetAllCellCenters()),
      child: BlocBuilder< GetAllCentersBloc ,  GetAllCentersState>(
        builder: (context, state) {
          if (state is LoadingGetAllCentersState)
            return Center(child: CircularProgressIndicator());
          else if (state is SuccessGetAllCentersState) {
            return ListViewCellCenters(cellCenters: state.cellCenters,);
          } else if (state is FeildGetAllCellCentersState)
            return MessageDisplay(message: state.message,);
          return CircularProgressIndicator();
          return CircularProgressIndicator();
        }
      ),
    );
  }
}
