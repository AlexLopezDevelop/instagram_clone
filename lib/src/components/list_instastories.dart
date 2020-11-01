import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/item_instapost.dart';
import 'package:instagram_clone/src/components/item_instastory.dart';

class InstaStoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStoryItem(),
              height: 100,
            )
          : InstaPostItem(),
    );
  }
}
