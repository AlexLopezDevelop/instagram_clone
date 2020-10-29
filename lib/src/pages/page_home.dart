import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/components/appbar_home.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarHome(
          imageCenter: Image.asset('assets/images/instagram-logo.png'),
          appBar: AppBar(),
          leftIconURL: "assets/icons/camera-icon.svg",
          rightIconURL: "assets/icons/sent-icon.svg",
        ),
        body: Container(),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "assets/icons/search-icon.svg",
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "assets/icons/search-icon.svg",
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "assets/icons/add-icon.svg",
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "assets/icons/heart-icon.svg",
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "assets/icons/home-icon.svg",
              ),
            ),
          )
        ]));
  }
}
