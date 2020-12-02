import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/src/components/item_instapost.dart';
import 'package:instagram_clone/src/components/item_instastory.dart';

class InstaStoriesList extends StatefulWidget {
  InstaStoriesList({Key key}) : super(key: key);

  _InstaStoriesList createState() => new _InstaStoriesList();
}

class _InstaStoriesList extends State<InstaStoriesList> {
  List stories = [];
  List posts = [];
  bool isLoading = false;

  void initState() {
    super.initState();
    this.fetchStories();
  }

  fetchStories() async {
    var url = "https://shared.dribbalabs.com/salle/instasalle.json";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var storiesJson = json.decode(response.body)['content']['stories'];
      var postsJson = json.decode(response.body)['content']['posts'];
      setState(() {
        stories = storiesJson;
        posts = postsJson;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStoryItem(posts),
              height: 113,
            )
          : InstaPostItem(),
    );
  }
}
