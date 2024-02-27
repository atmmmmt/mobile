part of 'sign_in_bloc.dart';

@immutable

class  SignInState {
  final BlocStateData<UserEntity> signInState ;

  const SignInState( {this.signInState = const BlocStateData.init()});

  copWith({
    BlocStateData<UserEntity>? signInState,

  })=>
      SignInState(
        signInState: signInState ?? this.signInState,
      );
}
