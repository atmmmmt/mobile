import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/strings/messeges.dart';
import '../../../domain/entities/getcellcenters.dart';
import '../../../domain/use_cases/get_cell_centers.dart';

part 'get_all_centers_event.dart';

part 'get_all_centers_state.dart';

class GetAllCentersBloc extends Bloc<GetAllCentersEvent, GetAllCentersState> {
  final GetCellCentersUseCase getCellCentersUseCase;

  GetAllCentersBloc({required this.getCellCentersUseCase})
      : super(GetAllSubjectInitial()) {
    on<GetAllCentersEvent>((event, emit) async{
      if (event is GetAllCellCenters) {
        emit(LoadingGetAllCentersState());
        final cellCenters = await getCellCentersUseCase();
        cellCenters.fold((Failure) {
          emit(FeildGetAllCellCentersState(message: _mapFailureToMessage(Failure)));
        }, (cellCenters) {
          emit(SuccessGetAllCentersState(cellCenters: cellCenters));
        });
      } else if (event is RefreshCellCenters) {
        emit(LoadingGetAllCentersState());
        final cellCenters= await getCellCentersUseCase();
        cellCenters.fold((Failure) {
          emit(FeildGetAllCellCentersState(message: _mapFailureToMessage(Failure)));
        }, ( cellCenters) {
          emit(SuccessGetAllCentersState(cellCenters: cellCenters));
        });
      }
    });
  }
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheEmptyFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OffLineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}

