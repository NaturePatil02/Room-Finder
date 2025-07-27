import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonCircularProgressIndicator extends StatefulWidget {
  final Color color;
  const CommonCircularProgressIndicator({super.key, this.color = Colors.white});

  @override
  State<CommonCircularProgressIndicator> createState() =>
      _CommonCircularProgressIndicatorState();
}

class _CommonCircularProgressIndicatorState
    extends State<CommonCircularProgressIndicator> {
  bool isAndroid = false;
  @override
  void initState() {
    super.initState();
    isAndroid = Platform.isAndroid;
  }

  @override
  Widget build(BuildContext context) {
    if (!isAndroid) {
      return CircularProgressIndicator(color: widget.color);
    } else {
      return CupertinoActivityIndicator(color: widget.color, radius: 15);
    }
  }
}
