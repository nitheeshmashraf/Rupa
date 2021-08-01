import 'package:flutter/material.dart';
import 'package:rupa/component/sideMenu.dart';
import 'package:rupa/constants.dart';
import 'package:rupa/screens/dashboardScreen.dart';
import 'package:rupa/screens/salesScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(flex: 5, child: SalesScreen())
          ],
        ),
      ),
    );
  }
}
