import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/zoom.dart';

final Screen secondScreen = new Screen(
  title: 'Second screen',
  background: DecorationImage(
    image: AssetImage('assets/images/screen2.jpg'),
    fit: BoxFit.fill,
    colorFilter: ColorFilter.mode(
      const Color(0xcc000000),
      BlendMode.multiply,
    ),
  ),
  contextBuilder: (context) {
    return Container();
  },
);
