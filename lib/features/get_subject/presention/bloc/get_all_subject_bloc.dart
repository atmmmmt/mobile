import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/strings/messeges.dart';
import '../../domain/entites/get_subject_entites.dart';
import '../../domain/use_cases/get_all_subject.dart';

part 'get_all_subject_event.dart';

part 'get_all_subject_state.dart';

class GetAllSubjectBloc extends Bloc<GetAllSubjectEvent, GetAllSubjectState> {
  final GetAllSubjectUseCase getAllSubjects;

  GetAllSubjectBloc({required this.getAllSubjects})
      : super(GetAllSubjectInitial()) {
    on<GetAllSubjectEvent>((event, emit) async {
      if (event is GetAllSubject) {
        emit(LoadingGetAllSubjectState());
        final subjects = await getAllSubjects();
        subjects.fold((Failure) {
          emit(FeildGetAllSubjectState(message: _mapFailureToMessage(Failure)));
        }, (subjects) {
          emit(SuccessGetAllSubjectState(subjects: subjects));
        });
      } else if (event is RefreshSubject) {
        emit(LoadingGetAllSubjectState());
        final subjects = await getAllSubjects();
        subjects.fold((Failure) {
          emit(FeildGetAllSubjectState(message: _mapFailureToMessage(Failure)));
        }, (subjects) {
          emit(SuccessGetAllSubjectState(subjects: subjects));
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
