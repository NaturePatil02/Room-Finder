import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/common/app_icons.dart';
import 'package:room_finder/util/common/widgets/arrow_button.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              child: Image(
                image: AssetImage(AppIcons.onBoarding3Image),
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
                        Text(
                          "Discover Rooms Using",
                          style: textTheme.displayMedium,
                        ),
                        Text(
                          "The Map",
                          style: textTheme.displayMedium!.copyWith(
                            color: AppColors.pirmaryColor,
                            fontFamily: FontFamily.cherrySwashBold,
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
                          style: textTheme.displaySmall,
                        ),
                        Text(
                          "printing and typesetting industry.",
                          style: textTheme.displaySmall,
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ArrowButton(
                          callBack: () {
                            GoRouter.of(context).pop();
                          },
                          back: true,
                        ),
                      ),
                    ),

                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(3, (index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            height: 10,
                            width: 10,
                            decoration:
                                index == 1
                                    ? BoxDecoration(
                                      color: AppColors.pirmaryColor,
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
                            ).pushNamed(AppRouteConst.onBoarding4Page);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: AppColors.pirmaryColor,
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
