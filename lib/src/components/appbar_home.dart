import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = new Color(0xfff8faf8);
  final Image imageCenter;
  final AppBar appBar;
  final Icon leftIcon;
  final Icon rightIcon;

  AppBarHome(
      {Key key, this.imageCenter, this.appBar, this.leftIcon, this.rightIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 1.0,
      leading: leftIcon,
      title: SizedBox(height: 45.0, child: imageCenter),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: rightIcon,
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
