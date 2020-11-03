import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InstaPostItem extends StatefulWidget {
  InstaPostItem({Key key}) : super(key: key);

  _InstaPostItem createState() => new _InstaPostItem();
}

class _InstaPostItem extends State<InstaPostItem> {
  bool liked = false;
  bool savedPost = false;
  bool showHeartOverlay = false;

  _pressedLikeButton() {
    setState(() {
      liked = !liked;
    });
  }

  _pressedSaveButton() {
    setState(() {
      savedPost = !savedPost;
    });
  }

  _doubleTapped() {
    setState(() {
      showHeartOverlay = true;
      liked = true;

      if (showHeartOverlay) {
        Timer(Duration(milliseconds: 800), () {
          setState(() {
            showHeartOverlay = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Post image, name, options
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 8, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/user-logo.jpg")),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Louis Vuitton",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: null)
            ],
          ),
        ),
        // Post image
        GestureDetector(
          onDoubleTap: () => _doubleTapped(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/post-1.jpg"),
              showHeartOverlay
                  ? Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 80,
                    )
                  : Container()
            ],
          ),
        ),

        // Post description
        Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        child: Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            liked
                                ? "assets/icons/heart-selected-icon.svg"
                                : "assets/icons/heart-icon.svg",
                            color: liked ? Color(0xffed4956) : Colors.black,
                          ),
                        ),
                        onTap: () => _pressedLikeButton()),
                    Container(
                      width: 28,
                      height: 28,
                      margin: EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                        "assets/icons/comments-icon.svg",
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        "assets/icons/sent-icon.png",
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  child: Container(
                    width: 31,
                    height: 31,
                    margin: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      savedPost
                          ? "assets/icons/bookmark-selected-icon.svg"
                          : "assets/icons/bookmark-icon.svg",
                    ),
                  ),
                  onTap: () => _pressedSaveButton(),
                )
              ],
            )),
        // Likes
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Alex Lopez y 256 personas le han dado like",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // View Comments
        Padding(
          padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
          child: Text(
            "Ver todos los 17 comentarios",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        // Write comment
        Padding(
          padding: EdgeInsets.fromLTRB(16, 5, 0, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/user-logo.jpg"))),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Escribir comentario"),
              ))
            ],
          ),
        ),
        // Time post
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Hace 12 horas",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
