import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rupa/component/chart.dart';
import 'package:rupa/component/header.dart';
import 'package:rupa/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(children: [
        Header(title: "Dashboard", showSearch: true),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 400,
                color: Colors.white,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(defaultPadding),
                height: 400,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Daily Stats",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Chart(),
                    Container()
                  ],
                ),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
