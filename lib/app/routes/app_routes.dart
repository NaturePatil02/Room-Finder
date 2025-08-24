import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/app/screens/auth/select_role/select_role_page.dart';
import 'package:room_finder/app/screens/auth/sign_in/sign_in_page.dart';
import 'package:room_finder/app/screens/auth/sign_up/sign_up_page.dart';
import 'package:room_finder/app/screens/dashboard/main_navigation_page.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding1.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding_page.dart';

class AppRoutes {
  static GoRouter appRoutes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "/",
        builder: (context, state) {
          return OnBoarding1();
        },
      ),
      GoRoute(
        path: AppRouteConst.onBoarding1Page,
        name: AppRouteConst.onBoarding1Page,
        builder: (context, state) {
          return OnBoarding1();
        },
      ),
      GoRoute(
        path: AppRouteConst.onBoardingMainPage,
        name: AppRouteConst.onBoardingMainPage,
        builder: (context, state) {
          return OnBoardingPage();
        },
      ),

      GoRoute(
        path: AppRouteConst.mainNavigationPage,
        name: AppRouteConst.mainNavigationPage,
        builder: (context, state) {
          return MainNavigationPage();
        },
      ),
      GoRoute(
        path: AppRouteConst.signInPage,
        name: AppRouteConst.signInPage,
        builder: (context, state) {
          return SignInPage();
        },
      ),
      GoRoute(
        path: AppRouteConst.signUpPage,
        name: AppRouteConst.signUpPage,
        builder: (context, state) {
          return SignUpPage();
        },
      ),
      GoRoute(
        path: AppRouteConst.roleBasedAccessPage,
        name: AppRouteConst.roleBasedAccessPage,
        builder: (context, state) {
          return SelectRolePage();
        },
      ),
      // GoRoute(
      //   path: AppRouteConst.onBoarding3Page,
      //   name: AppRouteConst.onBoarding3Page,
      //   builder: (context, state) {
      //     return OnBoarding3();
      //   },
      // ),
      // GoRoute(
      //   path: AppRouteConst.onBoarding3Page,
      //   name: AppRouteConst.onBoarding3Page,
      //   builder: (context, state) {
      //     return OnBoarding3();
      //   },
      // ),
    ],
  );
}
