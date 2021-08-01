import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerTileItem(
                title: "Dashboard",
                iconName: "assets/icons/menu_dashbord.svg",
                press: () {}),
            DrawerTileItem(
                title: "Transactions",
                iconName: "assets/icons/menu_tran.svg",
                press: () {}),
            DrawerTileItem(
                title: "Sales",
                iconName: "assets/icons/menu_store.svg",
                press: () {}),
            DrawerTileItem(
                title: "Reports",
                iconName: "assets/icons/menu_doc.svg",
                press: () {}),
            DrawerTileItem(
                title: "Settings",
                iconName: "assets/icons/menu_setting.svg",
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerTileItem extends StatelessWidget {
  const DrawerTileItem({
    Key key,
    @required this.title,
    @required this.iconName,
    @required this.press,
  }) : super(key: key);

  final String title, iconName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: ListTile(
        horizontalTitleGap: 0.0,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        leading: SvgPicture.asset(
          iconName,
          color: Colors.white54,
        ),
      ),
    );
  }
}
