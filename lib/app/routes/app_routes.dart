import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding1.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding2.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding3.dart';
import 'package:room_finder/app/screens/on_boardring/on_boarding4.dart';

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
        path: AppRouteConst.onBoarding2Page,
        name: AppRouteConst.onBoarding2Page,
        builder: (context, state) {
          return OnBoarding2();
        },
      ),
      GoRoute(
        path: AppRouteConst.onBoarding3Page,
        name: AppRouteConst.onBoarding3Page,
        builder: (context, state) {
          return OnBoarding3();
        },
      ),
      GoRoute(
        path: AppRouteConst.onBoarding4Page,
        name: AppRouteConst.onBoarding4Page,
        builder: (context, state) {
          return OnBoarding4();
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
