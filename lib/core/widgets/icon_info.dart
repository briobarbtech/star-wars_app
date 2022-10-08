import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Column iconInfo(context, String text, icon) {
  return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    FaIcon(
      icon,
      color: Colors.white,
      size: 24.0,
    ),
    const SizedBox(
      height: 10,
    ),
    Text(
      text,
      style: const TextStyle(color: Colors.white),
    )
  ]);
}
