import 'package:flutter/material.dart';
import 'package:mylilius_widgets/mylilius_widgets.dart';

abstract class AlertLauncher {

  static Future<void> showConfirmationAlert(BuildContext context, String title, [bool canDismiss = false, List<Widget>? actions, Widget? content]) async {
    return showDialog(
        context: context,
        barrierDismissible: canDismiss,
        barrierColor: Colors.transparent,
        useSafeArea: true,
        builder: (BuildContext ctx) {
          return ConfirmWidget(title: title, actions: actions, content: content);
        }
    );
  }
}