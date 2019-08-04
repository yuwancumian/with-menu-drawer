import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/zoom.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Screen thirdScreen = new Screen(
  title: 'third screen',
  background: DecorationImage(
    image: AssetImage('assets/images/floor.jpg'),
    fit: BoxFit.fill,
  ),
  contextBuilder: (context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: new PageList(),
      ),
    );
  },
);

class PageList extends StatefulWidget {
  const PageList({
    Key key,
  }) : super(key: key);

  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  List dataList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    String requestURL = 'https://jsonplaceholder.typicode.com/posts';
    var client = new http.Client();
    var response = await client.get(requestURL);

    String jsonString = response.body;
    print(jsonString);
    setState(() {
      dataList = json.decode(jsonString);
    });
    print(dataList.length);
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12, right: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Container(
                    width: 100.0,
                    height: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.orange[700],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          dataList[index]['title'],
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        height: 18,
                      ),
                      Container(
                        child: Text(dataList[index]['body']),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
