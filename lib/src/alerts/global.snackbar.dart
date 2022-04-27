import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showGlobalSnackBar(BuildContext context, String text) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 5), () {
          try {
            Navigator.pop(context);
          } on Exception {}
        });
        return Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(24),
            child: Wrap(children: [
              Text(
                'Copied To Clipboard',
                style: Theme.of(context).textTheme.bodyText1
              )
            ]));
      }
  );
}