import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_clone/src/components/item_instapost.dart';
import 'package:instagram_clone/src/components/item_instastory.dart';
import 'package:instagram_clone/src/models/story.dart';

class InstaStoriesList extends StatefulWidget {
  InstaStoriesList({Key key}) : super(key: key);

  _InstaStoriesList createState() => new _InstaStoriesList();
}

class _InstaStoriesList extends State<InstaStoriesList> {
  List<Stories> stories = [];
  List<Posts> posts = [];
  bool isLoading = false;

  void initState() {
    super.initState();
    this.fetchStories();
  }

  fetchStories() async {
    var url = "https://shared.dribbalabs.com/salle/instasalle.json";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map contentMap = jsonDecode(response.body)['content'];
      var content = Content.fromJson(contentMap);
      print(content.stories);
      setState(() {
        stories = content.stories;
        posts = content.posts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('d/M/yyyy hh:mm:ss');
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStoryItem(stories),
              height: 113,
            )
          : InstaPostItem(
              userTitle: posts[index].user,
              postImage: posts[index].media,
              comments: posts[index].comments,
              likes: posts[index].likes,
              time: formatter.parse(posts[index].createdAt),
            ),
    );
  }
}
