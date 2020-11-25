import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/src/models/story.dart';
import 'package:instagram_clone/src/pages/page_story.dart';
import 'dart:async';

/*Future<List<Story>> _getStories() async {
  var data = await rootBundle.loadString("assets/data/instasalle.json");
  var jsonData = json.decode(data);
  List<Story> stories = [];
  for (var story in jsonData) {}
}*/

final stories = Expanded(
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // TODO: Check if have stories, NOTE: Only Affects to the main user
                GestureDetector(
                  onTap: () => index == 0
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageStory()))
                      : {},
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/user-image.jpg"))),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      index == 0
                          ? Positioned(
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 10,
                                child: Icon(
                                  Icons.add,
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ))
                          : Container(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text("data"),
                )
              ],
            )));

class InstaStoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}
