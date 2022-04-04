library mylilius_widgets;

import 'package:flutter/material.dart';

class StatelessPageBuilder extends StatelessWidget {
  const StatelessPageBuilder({ Key? key, required this.widget, required this.appBar }) : super(key: key);

  final AppBar appBar;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: widget
    );
  }
}