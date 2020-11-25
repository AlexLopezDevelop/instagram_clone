import 'dart:io';

import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:path_provider/path_provider.dart';

class PageStory extends StatefulWidget {
  PageStory({Key key}) : super(key: key);

  _PageStory createState() => new _PageStory();
}

class _PageStory extends State<PageStory> {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> stories = [
      StoryItem.text(title: "Paco", backgroundColor: Colors.blue),
      // Hardcoded image to show that image its local stored
      StoryItem.pageProviderImage(FileImage(File(
          "/data/user/0/com.example.instagram_clone/app_flutter/Pictures/flutter_test/1606328245736.jpg"))),
      StoryItem.pageImage(
          url:
              "https://image.freepik.com/foto-gratis/vista-vertical-torre-eiffel-paris-francia_1258-3169.jpg",
          controller: null)
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
