import 'package:flutter/material.dart';

class ConfirmWidget extends StatelessWidget {

  const ConfirmWidget({ Key? key, required this.title, this.actions, this.content }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Widget? content;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColorDark,
      title: Text(title, style: Theme.of(context).textTheme.headline4),
      content: content ?? Container(),
      actions: actions?.map((Widget _action) => _action).toList()
    );
  }

  Future<void> sendToMyLiliusWebsite() async {
    // return 'a';
  }
}