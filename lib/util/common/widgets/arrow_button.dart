import 'package:flutter/material.dart';
import 'package:room_finder/util/theme/app_colors.dart';

class ArrowButton extends StatefulWidget {
  final GestureTapCallback callBack;
  final bool back;
  const ArrowButton({super.key, required this.callBack, this.back = false});

  @override
  State<ArrowButton> createState() => _ArrowButtonState();
}

class _ArrowButtonState extends State<ArrowButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: Colors.white30,
          onTap: widget.callBack,
          child: Container(
            alignment: Alignment.center,
            width: 30,
            height: 30,
            child: Center(
              child:
                  widget.back
                      ? Icon(Icons.arrow_back, color: Colors.white)
                      : Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
