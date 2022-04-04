library mylilius_widgets;

import 'package:flutter/material.dart';

class StackBuilder extends StatelessWidget {
  const StackBuilder({ Key? key, required this.children, this.width, this.height }) : super(key: key);

  final List<Widget> children;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final double _width = width == null ? MediaQuery.of(context).size.width : width!;
    final double _height = height == null ? MediaQuery.of(context).size.height : height!;

    return SizedBox(
      width: _width,
      height: _height,
      child: Stack(
        children: children
      )
    );
  }
}