import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackBar(BuildContext ctx, [String content = 'Error']) {
  return ScaffoldMessenger.of(ctx).showSnackBar(ErrorSnackBar(content: content).build(ctx));
}

class ErrorSnackBar {
  const ErrorSnackBar({ required this.content });

  final String content;

  SnackBar build(BuildContext context) {
    return SnackBar(
      // backgroundColor: Theme.of(context).backgroundColor,
      content: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 0.5
                  )
              )
          ),
          child: Text(
              content,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.red)
          )
      ),
    );
  }
}