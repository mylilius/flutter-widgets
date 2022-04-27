import 'package:flutter/material.dart';



abstract class LoadingWidgets {

  static Widget circle(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: 50,
      child: CircularProgressIndicator()
    );
  }

  static Widget text(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      child: Text('Loading...', style: Theme.of(context).textTheme.bodyText1)
    );
  }

  static Widget textAndCircle(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Loading', style: Theme.of(context).textTheme.bodyText1),
          const CircularProgressIndicator()
        ]
      )
    );
  }
}