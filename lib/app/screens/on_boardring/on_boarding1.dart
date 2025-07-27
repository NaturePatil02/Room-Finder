import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/common/app_icons.dart';
import 'package:room_finder/util/common/widgets/primary_button.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage(AppIcons.onBoarding1Image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.house, color: Colors.blue),
                      RichText(
                        text: TextSpan(
                          text: "Room",
                          style: Theme.of(context).textTheme.displayLarge,
                          children: [
                            TextSpan(
                              text: "For",
                              style: Theme.of(
                                context,
                              ).textTheme.displayLarge!.copyWith(
                                color: AppColors.pirmaryColor,
                                fontFamily: FontFamily.cherrySwashBold,
                              ),
                            ),
                            TextSpan(
                              text: ".Rent",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  PrimaryButton(
                    callBack: () {
                      GoRouter.of(
                        context,
                      ).replaceNamed(AppRouteConst.onBoarding2Page);
                    },
                    label: "Get Started",
                    isLoading: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
