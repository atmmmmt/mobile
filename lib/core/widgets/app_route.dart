 import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/activate_qr_code.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/change_password.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/choose_major.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/confirm_register.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/qr_code_screen.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_up.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/subscribe.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/congrats_register.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_in.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/favourite.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/my_codes.dart';
import 'package:atmtha_mobile/features/quiz/free_quiz_levels/quiz_levels.dart';
import 'package:go_router/go_router.dart';

 final GoRouter router = GoRouter(
     initialLocation: '/sign_up_screen',
     routes: [
      GoRoute(
       path: SignUpScreen.path,
       name: SignUpScreen.name,
       builder: (context, state)=> SignUpScreen(),
      ),
       GoRoute(
         path: SignInScreen.path,
         name: SignInScreen.name,
         builder: (context, state)=> SignInScreen(),
       ),
       GoRoute(
         path: ChangePasswordScreen.path,
         name: ChangePasswordScreen.name,
         builder: (context, state)=> ChangePasswordScreen(),
       ),
       GoRoute(
         path: CongratsScreen.path,
         name: CongratsScreen.name,
         builder: (context, state)=> CongratsScreen(),
       ),
       GoRoute(
         path: ChooseMajor.path,
         name: ChooseMajor.name,
         builder: (context, state)=> ChooseMajor(),
       ),
       GoRoute(
         path: ConfirmPassword.path,
         name: ConfirmPassword.name,
         builder: (context, state)=> ConfirmPassword(),
       ),
       GoRoute(
         path: Subscribe.path,
         name: Subscribe.name,
         builder: (context, state)=> Subscribe(),
       ),
       GoRoute(
         path: ActivateCode.path,
         name: ActivateCode.name,
         builder: (context, state)=> ActivateCode(),
       ),
       GoRoute(
         path: MyCodesScreen.path,
         name: MyCodesScreen.name,
         builder: (context, state)=> MyCodesScreen(),
       ),
       GoRoute(
         path: FavouriteScreen.path,
         name: FavouriteScreen.name,
         builder: (context, state)=> FavouriteScreen(),
       ),


     ]
);

