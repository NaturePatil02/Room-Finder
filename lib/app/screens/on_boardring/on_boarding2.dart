import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/common/app_icons.dart';
import 'package:room_finder/util/common/widgets/arrow_button.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Image(
                image: AssetImage(AppIcons.onBoarding2Image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Find Your Rental",
                            style: textTheme.displayMedium,
                            children: [
                              TextSpan(
                                text: " Room",
                                style: Theme.of(
                                  context,
                                ).textTheme.displayMedium!.copyWith(
                                  color: AppColors.primaryColor,
                                  fontFamily: FontFamily.cherrySwashBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "With",
                            style: textTheme.displayMedium,
                            children: [
                              TextSpan(
                                text: " Room Finder",
                                style: textTheme.displayMedium!.copyWith(
                                  color: AppColors.primaryColor,
                                  fontFamily: FontFamily.cherrySwashBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "Lorem lpsum is simple dummy text of the",
                          style: textTheme.bodyMedium,
                        ),
                        Text(
                          "printing and typesetting industry.",
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(3, (index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            height: 10,
                            width: 10,
                            decoration:
                                index == 0
                                    ? BoxDecoration(
                                      color: AppColors.primaryColor,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          color: Colors.blue[200]!,
                                        ),
                                      ],
                                    )
                                    : BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                          );
                        }),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ArrowButton(
                          callBack: () {
                            GoRouter.of(
                              context,
                            ).pushNamed(AppRouteConst.onBoarding3Page);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(AppRouteConst.signInPage);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
