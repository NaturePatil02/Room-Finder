import 'package:flutter/material.dart';
import 'package:room_finder/util/common/app_icons.dart';
import 'package:room_finder/util/common/widgets/secondary_button.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class SelectRolePage extends StatelessWidget {
  const SelectRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        "Select role based on Your Requirements",
                        style: textTheme.displaySmall!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Owner or Finder",
                        style: textTheme.displaySmall!.copyWith(
                          color: Colors.white,
                          fontFamily: FontFamily.cherrySwashBold,
                        ),
                      ),
                    ],
                  ),
                ),

                _buildSelectRole(textTheme: textTheme),

                SecondaryButton(
                  callBack: () {},
                  label: "Next",
                  isLoading: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectRole({required var textTheme}) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image(image: AssetImage(AppIcons.ownerIcon)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Owner",
                      style: textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                        fontFamily: FontFamily.cherrySwashBold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image(image: AssetImage(AppIcons.finderIcon)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Finder",
                      style: textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                        fontFamily: FontFamily.cherrySwashBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
