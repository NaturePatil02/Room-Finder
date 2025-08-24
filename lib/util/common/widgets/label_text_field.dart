import 'package:flutter/material.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  const LabelTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.textFieldLabelTextColor,
            ),
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(hintText: hintText),
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryTextColorLight,
              fontFamily: FontFamily.kanitRegular,
            ),
          ),
        ],
      ),
    );
  }
}
