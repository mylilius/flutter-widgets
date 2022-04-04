library mylilius_widgets;

import 'package:flutter/material.dart';

class CenteredAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CenteredAppBar({ Key? key, this.title }) : super(key: key);

  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null ? _myLiliusTitle(context) : Text(title!),
    );
  }
}

RichText _myLiliusTitle(BuildContext context) {
  return RichText(
    text: TextSpan(
        text: 'My',
        style: Theme.of(context).textTheme.headline3?.copyWith(color: Theme.of(context).primaryColor),
        children: <TextSpan>[
          TextSpan(
              text: 'Lilius',
              style: Theme.of(context).textTheme.headline3,
          )
        ]
    ),
  );
}