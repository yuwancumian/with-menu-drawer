import 'package:flutter/material.dart';

import 'zoom.dart';

final Screen secondScreen = new Screen(
    title: 'Second screen',
    background: DecorationImage(
        image: AssetImage('assets/images/screen2.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(const Color(0xcc000000), BlendMode.multiply)),
    contextBuilder: (context) {
      return Container(
          child: Center(
        child: Container(
          child: Card(
              child:
                  Column(children: [Image.asset('assets/images/screen2.jpg')])),
        ),
      ));
    });
