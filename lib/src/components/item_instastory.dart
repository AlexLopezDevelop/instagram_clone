import 'package:flutter/material.dart';

final stories = Expanded(
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/user-image.jpg"))),
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
                    : Container()
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
