import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/screen/third_screen.dart';

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
      home: new MyHomePage(),
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
  var activeScreen = thirdScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: activeScreen.background),
      child: new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: new Text(activeScreen.title,
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
          body: activeScreen.contextBuilder(context)),
    );
  }
}
