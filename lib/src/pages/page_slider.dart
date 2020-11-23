import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:instagram_clone/src/pages/page_camera.dart';
import 'package:instagram_clone/src/pages/page_home.dart';

List<CameraDescription> cameras;

class PageSlider extends StatefulWidget {
  final List<CameraDescription> cameras;
  PageSlider({this.cameras});

  _PageSlider createState() => new _PageSlider();
}

class _PageSlider extends State<PageSlider> {
  int currentPage = 0;
  PageController pageController = PageController(
    initialPage: 1,
    keepPage: true,
  );
  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        CameraScreen(widget.cameras),
        PageHome(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
    );
  }
}
