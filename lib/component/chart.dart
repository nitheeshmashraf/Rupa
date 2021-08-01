import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rupa/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(
          PieChartData(
              sectionsSpace: 0.0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartsectionData),
        ),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("29.1",
                style: Theme.of(context).textTheme.headline4.copyWith(
                    height: 0.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600))
          ],
        ))
      ]),
    );
  }
}

List<PieChartSectionData> pieChartsectionData = [
  PieChartSectionData(
      value: 25, color: primaryColor, radius: 22, showTitle: false),
  PieChartSectionData(
      value: 19, color: Colors.amber, radius: 19, showTitle: false),
  PieChartSectionData(
      value: 10, color: Colors.red, radius: 16, showTitle: false),
  PieChartSectionData(
      value: 6,
      color: primaryColor.withOpacity(0.1),
      radius: 13,
      showTitle: false),
];
