import 'package:atmtha_mobile/features/auth/presentation/pages/sign_in.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/sign_up.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/textfield_inputs.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/pages/bottom_nav_bar/Home/home.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/add_exam/add_exam_screen.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/navbar.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/profile/profileScreen.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/profile/profile_home_page/favourite.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/profile/profile_home_page/my_codes.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/profile/profile_home_page/my_profile/edit_user_profile.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/profile/profile_home_page/my_profile/my_profile_screen/my_profile.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/about.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/contact_us.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/sell_centers.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/settings_screen.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/verify_code.dart';
import '../../features/home/presentation/pages/bottom_nav_bar/settings/verify_way.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
    initialLocation: '/nav_bar_screen',
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: SignInScreen.path,
        name: SignInScreen.name,
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: NavBarScreen.path,
        name: NavBarScreen.name,
        builder: (context, state) => NavBarScreen(),
      ),
      GoRoute(
        path: HomePageScreen.path,
        name: HomePageScreen.name,
        builder: (context, state) => HomePageScreen(),
      ),
      GoRoute(
        path: AddExamScreen.path,
        name: AddExamScreen.name,
        builder: (context, state) => AddExamScreen(),
      ),
      GoRoute(
        path: SettingsScreen.path,
        name: SettingsScreen.name,
        builder: (context, state) => SettingsScreen(),
      ),
      GoRoute(
        path: ProfileScreen.path,
        name: ProfileScreen.name,
        builder: (context, state) => ProfileScreen(),
      ),

      GoRoute(
        path: About.path,
        name: About.name,
        builder: (context, state) => About(),
      ),

      GoRoute(
        path: ContactUs.path,
        name: ContactUs.name,
        builder: (context, state) => ContactUs(),
      ),

      GoRoute(
        path: SellCenters.path,
        name: SellCenters.name,
        builder: (context, state) => SellCenters(),
      ),

      GoRoute(
        path: VerityCode.path,
        name: VerityCode.name,
        builder: (context, state) =>  VerityCode(),
      ),

      GoRoute(
        path: VerityWay.path,
        name: VerityWay.name,
        builder: (context, state) => VerityWay(),
      ),
      GoRoute(
        path: Favourite.path,
        name: Favourite.name,
        builder: (context, state) => Favourite(),
      ),
      GoRoute(
        path: MyCodes.path,
        name: MyCodes.name,
        builder: (context, state) => MyCodes(),
      ),
      GoRoute(
        path: MyProfile.path,
        name: MyProfile.name,
        builder: (context, state) => MyProfile(),
      ),
      GoRoute(
        path: EditUserProfile.path,
        name: EditUserProfile.name,
        builder: (context, state) => EditUserProfile(),
      ),
     // StatefulShellRoute.indexedStack(
     //      builder: (context, state, navigationShell) =>
     //          NavbarScreen(navigationShell: navigationShell),
     //      branches: [
     //        StatefulShellBranch(routes: <RouteBase>[
     //          GoRoute(
     //            path: AddExamScreen.path,
     //            name: AddExamScreen.name,
     //            builder: (context, state) => const AddExamScreen(),
     //          ),
     //        ]),
     //        StatefulShellBranch(routes: <RouteBase>[
     //          GoRoute(
     //            path: HomePageScreen.path,
     //            name: HomePageScreen.name,
     //            builder: (context, state) => const HomePageScreen(),
     //          ),
     //        ]),
     //        StatefulShellBranch(routes: <RouteBase>[
     //          GoRoute(
     //            path: ProfileScreen.path,
     //            name: ProfileScreen.name,
     //            builder: (context, state) => const ProfileScreen(),
     //          ),
     //        ]),
     //        StatefulShellBranch(routes: <RouteBase>[
     //          GoRoute(
     //              path: SettingsScreen.path,
     //              name: SettingsScreen.name,
     //              builder: (context, state) => const SettingsScreen())
     //        ])
     //      ])
    ]);
