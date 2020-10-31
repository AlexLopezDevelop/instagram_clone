import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/components/appbar_home.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);

  _PageHome createState() => new _PageHome();
}

class _PageHome extends State<PageHome> {
  _PageHome({@required this.index});
  int index;
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
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
              //_navigateToScreens(index);
            },
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    index == 0
                        ? "assets/icons/home-selected-icon.svg"
                        : "assets/icons/home-icon.svg",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    index == 1
                        ? "assets/icons/search-selected-icon.svg"
                        : "assets/icons/search-icon.svg",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    index == 2
                        ? "assets/icons/add-selected-icon.svg"
                        : "assets/icons/add-icon.svg",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    index == 3
                        ? "assets/icons/heart-selected-icon.svg"
                        : "assets/icons/heart-icon.svg",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    index == 4
                        ? "assets/icons/home-selected-icon.svg"
                        : "assets/icons/home-icon.svg",
                  ),
                ),
              )
            ]));
  }
}
