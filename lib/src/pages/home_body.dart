import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/list_instastories.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[Flexible(child: InstaStoriesList())],
    );
  }
}
