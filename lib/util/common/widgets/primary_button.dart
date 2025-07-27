import 'package:flutter/material.dart';
import 'package:room_finder/util/common/widgets/common_circular_progress_indicator.dart';
import 'package:room_finder/util/theme/app_colors.dart';

class PrimaryButton extends StatefulWidget {
  final GestureTapCallback? callBack;
  final Widget? child;
  final String label;
  final bool isLoading;
  const PrimaryButton({
    super.key,
    this.child,
    required this.callBack,
    required this.label,
    required this.isLoading,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [AppColors.pirmaryColor, AppColors.secondryColor],
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: Colors.white30,
          onTap: widget.callBack,
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 50,
            child: Center(
              child:
                  widget.isLoading
                      ? CommonCircularProgressIndicator()
                      : Text(
                        widget.label,
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.primaryButtonTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
            ),
          ),
        ),
      ),
    );
  }
}
