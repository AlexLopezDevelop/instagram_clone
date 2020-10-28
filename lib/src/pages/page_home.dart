import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/appbar_home.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBarHome(
        imageCenter: Image.asset('assets/images/instagram-logo.png'),
        appBar: AppBar(),
        leftIcon: new Icon(Icons.camera_alt),
        rightIcon: new Icon(Icons.send),
      ),
    );
  }
}
