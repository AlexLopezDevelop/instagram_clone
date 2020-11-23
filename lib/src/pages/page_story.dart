import 'package:flutter/material.dart';

class PageStory extends StatefulWidget {
  PageStory({Key key}) : super(key: key);

  _PageStory createState() => new _PageStory();
}

class _PageStory extends State<PageStory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
