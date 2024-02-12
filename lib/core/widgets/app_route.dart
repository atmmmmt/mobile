 import 'package:atmtha_mobile/features/auth/presentation/pages/sign_in.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_up.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/textfield_inputs.dart';
import 'package:go_router/go_router.dart';

 final GoRouter router = GoRouter(
     initialLocation: '/sign_in_screen',
     routes: [
      GoRoute(
       path: SignInScreen.path,
       name: SignInScreen.name,
       builder: (context, state)=> SignInScreen(),
      ),

 ]
);

