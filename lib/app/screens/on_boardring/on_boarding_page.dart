import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/constants/app_icons.dart';
import 'package:room_finder/util/common/widgets/primary_button.dart';
import 'package:room_finder/util/constants/string_const.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: _pageController,
              children: [
                _buildPageView1(textTheme),
                _buildPageView2(textTheme),
                _buildPageView3(textTheme),
              ],
            ),
          ),

          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Column(
                children: [
                  currentIndex != 2
                      ? Stack(
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
                                      index == currentIndex
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
                            child: GestureDetector(
                              onTap: () {
                                GoRouter.of(
                                  context,
                                ).goNamed(AppRouteConst.signInPage);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(
                                  StringConst.skip,
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                      : SafeArea(
                        child: PrimaryButton(
                          callBack: () {
                            GoRouter.of(
                              context,
                            ).goNamed(AppRouteConst.signInPage);
                          },
                          label: "Welcome",
                          isLoading: false,
                        ),
                      ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildPageView1(textTheme) {
    return Column(
      children: [
        SizedBox(
          child: Image(
            image: AssetImage(AppIcons.onBoarding2Image),
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(
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
      ],
    );
  }

  Widget _buildPageView2(textTheme) {
    return Column(
      children: [
        SizedBox(
          child: Image(
            image: AssetImage(AppIcons.onBoarding3Image),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
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
                        color: AppColors.primaryColor,
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
      ],
    );
  }

  Widget _buildPageView3(textTheme) {
    return Column(
      children: [
        SizedBox(
          child: Image(
            image: AssetImage(AppIcons.onBoarding4Image),
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      "Arrange Meeting with",
                      style: textTheme.displayMedium,
                    ),
                    Text(
                      "Property Owner",
                      style: textTheme.displayMedium!.copyWith(
                        color: AppColors.primaryColor,
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
      ],
    );
  }
}
