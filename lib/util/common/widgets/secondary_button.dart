import 'package:flutter/material.dart';
import 'package:room_finder/util/common/widgets/common_circular_progress_indicator.dart';
import 'package:room_finder/util/theme/app_colors.dart';

class SecondaryButton extends StatefulWidget {
  final GestureTapCallback? callBack;
  final Widget? child;
  final String label;
  final bool isLoading;
  final Color gbColor;
  final Color textColor;

  const SecondaryButton({
    super.key,
    this.child,
    required this.callBack,
    required this.label,
    required this.isLoading,
    this.gbColor = AppColors.primaryColor,
    this.textColor = Colors.white,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.gbColor,
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
                          color: widget.textColor,
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
