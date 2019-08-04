import 'package:flutter/material.dart';

import 'zoom.dart';

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
      return Center(
        child: Container(
          height: 400.0,
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/screen2.jpg'),
                Expanded(
                  child: Text('绝域从军计惘然，'),
                ),
                Expanded(
                  child: Text('东南幽恨满词笺。'),
                ),
                Expanded(
                  child: Text('一箫一剑平生意，'),
                ),
                Expanded(
                  child: Text('负尽狂名十五年。'),
                ),
              ],
            ),
          ),
        ),
      );
    });
