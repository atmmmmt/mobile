import 'dart:async';

import 'package:atmtha_mobile/core/bloc/app_state_bloc.dart';
import 'package:atmtha_mobile/features/auth/domain/entities/auth_entitie.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<SignInEvent>((event, emit) {
    });
  }
}
