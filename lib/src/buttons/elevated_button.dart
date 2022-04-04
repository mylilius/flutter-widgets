library mylilius_widgets;

import 'package:flutter/material.dart';

class MyElevatedButton extends ElevatedButton {
  const MyElevatedButton({ required VoidCallback? onPressed, required Widget? child}) : super(onPressed: onPressed, child: child);

  @override
  // TODO: implement style
  ButtonStyle? get style => const ButtonStyle(
    alignment: Alignment.center
  );

}