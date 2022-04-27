import 'package:flutter/material.dart';
import 'package:mylilius_widgets/mylilius_widgets.dart';
import 'package:mylilius_widgets/src/placeholder/loading.dart';

class BasicOverlay extends ModalRoute<void> {

  BasicOverlay([this.widget, this.canDismiss = false]);

  final Widget? widget;
  final bool canDismiss;

  @override
  Color? get barrierColor => lightTheme.primaryColor;

  @override
  bool get barrierDismissible => canDismiss;

  @override
  String? get barrierLabel => 'Loading...';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return Material(
        type: MaterialType.transparency,
        child: SafeArea(
            child: widget ?? LoadingWidgets.text(context)
        )
    );
  }

  @override
  bool get maintainState => true;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(seconds: 1);

}