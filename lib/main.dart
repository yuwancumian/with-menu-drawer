import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'My Flutter App Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/floor.jpg'), fit: BoxFit.fill)),
      child: new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: new Text(widget.title,
                style: TextStyle(
                  fontFamily: 'bebas-neue',
                  fontSize: 25,
                )),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print(123);
              },
            ),
          ),
          body: ListView(
            children: <Widget>[
              _ItemCard(
                headImageAssetPath: 'assets/home1.jpg',
                title: 'item1',
                subtitle: 'item subtilte1',
                icon: Icons.fastfood,
                iconBackgroundColor: Colors.red,
                heartCount: 12,
              ),
              _ItemCard(
                headImageAssetPath: 'assets/home2.jpg',
                title: 'item1',
                subtitle: 'item subtilte1',
                icon: Icons.favorite,
                iconBackgroundColor: Colors.red,
                heartCount: 24,
              ),
              _ItemCard(
                headImageAssetPath: 'assets/home3.jpg',
                title: 'item1',
                subtitle: 'item subtilte1',
                icon: Icons.ac_unit,
                iconBackgroundColor: Colors.red,
                heartCount: 32,
              ),
            ],
          )),
    );
  }
}

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
