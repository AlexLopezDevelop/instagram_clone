import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/story.dart';
import 'package:instagram_clone/src/models/story.dart';
import 'package:instagram_clone/src/pages/page_story.dart';

class InstaStoryItem extends StatelessWidget {
  InstaStoryItem(this.stories);
  List<Stories> stories = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // TODO: Check if have stories, NOTE: Only Affects to the main user
                        GestureDetector(
                          onTap: () => stories[index] != null
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageStory(
                                          media: stories[index].media)))
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
                          child: Text(stories[index].user),
                        )
                      ],
                    )),
          ),
        ],
      ),
    );
  }
}
