import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tost {
  static tostedmessage({
    required BuildContext context,
    required String messages,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(messages),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: "Next",
        onPressed: () {
          Navigator.of(context).pushNamed('WorkspacePage');
        },
      ),
    ));
  }
}
