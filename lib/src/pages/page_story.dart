import 'dart:io';

import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

import 'dart:core';

enum UrlType { IMAGE, VIDEO, UNKNOWN }

class PageStory extends StatefulWidget {
  final String media;
  PageStory({Key key, @required this.media}) : super(key: key);

  _PageStory createState() => new _PageStory();
}

class _PageStory extends State<PageStory> {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> stories = [
      getUrlType(widget.media) == UrlType.IMAGE
          ? StoryItem.pageImage(url: widget.media, controller: null)
          : StoryItem.pageVideo(
              /*widget.media*/ "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
              controller:
                  controller), // Changed api video because its not available
    ];
    return Material(
        child: StoryView(
      storyItems: stories,
      controller: controller,
      inline: false,
      repeat: false,
      onComplete: () {
        Navigator.of(context).pop();
      },
    ));
  }
}

UrlType getUrlType(String url) {
  Uri uri = Uri.parse(url);
  String typeString = uri.path.substring(uri.path.length - 4).toLowerCase();
  if (typeString == "jpeg") {
    return UrlType.IMAGE;
  }
  typeString = uri.path.substring(uri.path.length - 3).toLowerCase();
  if (typeString == "jpg") {
    return UrlType.IMAGE;
  }
  if (typeString == "mp4") {
    return UrlType.VIDEO;
  } else {
    return UrlType.UNKNOWN;
  }
}
