 import 'package:atmtha_mobile/features/auth/presentation/pages/activate_qr_code.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/change_password.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/choose_major.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/confirm_register.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/qr_code_screen.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_up.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/subscribe.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/WelcomeName.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/congrats_register.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_in.dart';
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

