import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test({Key key,this.name}) :super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    greet('dart111');
    print(Text);
    return Container(
      height: 100,
      child: Text(
        this.name
      )
    );
  }
}

String greet(String name){
  print(name);
	return 'Hello' + name;
    //在 Dart 中，返回类型在方法名称之前
}
