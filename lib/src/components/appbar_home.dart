import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = new Color(0xfff8faf8);
  final Image imageCenter;
  final AppBar appBar;
  final String leftIconURL;
  final String rightIconURL;

  AppBarHome(
      {Key key,
      this.imageCenter,
      this.appBar,
      this.leftIconURL,
      this.rightIconURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 1.0,
      leading: Container(
        padding: EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        child: SvgPicture.asset(
          leftIconURL,
        ),
      ),
      title: SizedBox(height: 50.0, child: imageCenter),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Container(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: SvgPicture.asset(
              rightIconURL,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
