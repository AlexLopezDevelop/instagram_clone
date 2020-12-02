import 'package:flutter/material.dart';

class Story {
  String media;
  String type;
  String title;
  String user;
  int views;
  DateTime createdAt;

  Story(
      {this.media,
      this.type,
      this.title,
      this.user,
      this.views,
      this.createdAt});

  Story.fromJson(Map<String, dynamic> json) {
    media = json['media'];
    type = json['type'];
    title = json['title'];
    user = json['user'];
    views = json['views'];
    createdAt = json['created_at'];
  }
}

class Post {
  String media;
  String type;
  String title;
  String user;
  int likes;
  DateTime createdAt;
  List<Comment> comments;

  Post(
      {this.media,
      this.type,
      this.title,
      this.user,
      this.likes,
      this.createdAt,
      this.comments});
}

class Comment {
  String user;
  String comment;
  String createdAt;

  Comment({this.user, this.comment, this.createdAt});
}

class Content {
  List<Story> stories;
  List<Post> posts;

  Content({this.stories, this.posts});

  factory Content.fromJson(Map<String, dynamic> parsedJson) {
    return Content(
      stories: parsedJson['stories'],
      posts: parsedJson['post'],
    );
  }
}

class InstaSalle {
  List<Content> data;

  InstaSalle({this.data});

  factory InstaSalle.fromJson(Map<String, dynamic> parsedJson) {
    return InstaSalle(
      data: parsedJson['content'],
    );
  }
}
