import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyToClipboard(
    {required String text,
    required BuildContext context,
    required String scaffoldText}) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(scaffoldText)),
  );
}
