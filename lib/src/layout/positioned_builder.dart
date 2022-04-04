library mylilius_widgets;

import 'package:flutter/material.dart';

class PositionBuilder extends StatelessWidget {
  const PositionBuilder({ Key? key, this.top, this.left, this.right, this.bottom, required this.widget }) : super(key: key);

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final Widget widget;
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: widget
    );
  }
}