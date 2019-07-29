import 'package:flutter/material.dart';

import './zoom.dart';

final Screen firstScreen = new Screen(
    title: 'the new title1',
    background: new DecorationImage(
      image: new AssetImage('assets/images/floor.jpg'),
      fit: BoxFit.cover,
    ),
    contextBuilder: (BuildContext context) {
      return ListView(
        children: <Widget>[
          _ItemCard(
            headImageAssetPath: 'assets/images/home1.jpg',
            title: 'item111',
            subtitle: 'item subtilte1111',
            icon: Icons.fastfood,
            iconBackgroundColor: Colors.red,
            heartCount: 113,
          ),
          _ItemCard(
            headImageAssetPath: 'assets/images/home2.jpg',
            title: 'item222222',
            subtitle: 'item subtilte2',
            icon: Icons.favorite,
            iconBackgroundColor: Colors.red,
            heartCount: 124,
          ),
          _ItemCard(
            headImageAssetPath: 'assets/images/home3.jpg',
            title: 'item13',
            subtitle: 'item subtilte1',
            icon: Icons.ac_unit,
            iconBackgroundColor: Colors.red,
            heartCount: 32,
          ),
        ],
      );
    });

class _ItemCard extends StatelessWidget {
  final String headImageAssetPath;
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final int heartCount;

  _ItemCard(
      {this.headImageAssetPath,
      this.icon,
      this.iconBackgroundColor,
      this.heartCount,
      this.subtitle,
      this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Image.asset(headImageAssetPath,
                width: double.infinity, height: 220.0, fit: BoxFit.cover),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: iconBackgroundColor,
                          borderRadius:
                              BorderRadius.all(const Radius.circular(15.0))),
                      child: Icon(icon, color: Colors.white)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(subtitle,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  ),
                ),
                Container(
                  width: 2.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.white, Colors.white, const Color(0xFFAA00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                      Text('$heartCount')
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
