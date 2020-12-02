import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/components/appbar_home.dart';
import 'package:instagram_clone/src/pages/home_body.dart';

class PageHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  PageHome({this.cameras});

  _PageHome createState() => new _PageHome();
}

class _PageHome extends State<PageHome> {
  int currentPage = 0;
  List<Widget> tabs = <Widget>[
    //CameraScreen(widget.cameras),
    HomeBody(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarHome(
          imageCenter: Image.asset('assets/images/instagram-logo.png'),
          appBar: AppBar(),
          leftIconURL: "assets/icons/camera-icon.svg",
          rightIconURL: "assets/icons/sent-icon.png",
        ),
        body: tabs[currentPage],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                this.currentPage = index;
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
                    currentPage == 0
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
                    currentPage == 1
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
                    currentPage == 2
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
                    currentPage == 3
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
                  child: currentPage == 4
                      ? Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/user-logo.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(new Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.2,
                            ),
                          ),
                        )
                      : Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/user-logo.jpg")),
                          ),
                        ),
                ),
              )
            ]));
  }
}
