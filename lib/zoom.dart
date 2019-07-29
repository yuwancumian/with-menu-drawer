import 'package:flutter/material.dart';

class Screen {
  final String title;
  final DecorationImage background;
  final WidgetBuilder contextBuilder;
  Screen({
    this.title,
    this.background,
    this.contextBuilder,
  });
}
