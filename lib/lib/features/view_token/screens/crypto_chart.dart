import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flatra/features/home/models/coin_data.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart' as quiver;

class CryptoChart extends StatelessWidget {
  const CryptoChart(
      {super.key, required this.lineColor, this.data, required this.coinPrice});

  final Color lineColor;
  final List<FlSpot>? data;
  final SparklineIn7D coinPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 200,
      width: AppLayout.getScreenWidth(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
      child: LineChart(
        lineChartData,
        swapAnimationDuration: const Duration(milliseconds: 250),
      ),
    );
  }

  LineChartData get lineChartData => LineChartData(
        lineTouchData: lineTouchData, // Customize touch points
        gridData: gridData, // Customize grid
        titlesData: titlesData, // Customize axis labels
        borderData: borderData, // Customize border
        lineBarsData: [
          lineChartBarData,
        ],
      );

  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(),
        rightTitles: AxisTitles(),
        topTitles: AxisTitles(),
        leftTitles: AxisTitles(),
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(show: false);

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: true,
        color: lineColor,
        barWidth: 2,
        dotData: FlDotData(show: false),
        spots: data ?? generateSampleData(),
        belowBarData: BarAreaData(
          show: true,
          color: lineColor.withAlpha(50),
        ),
      );

  List<FlSpot> generateSampleData() {
    final List<FlSpot> result = [];
    final List price = coinPrice.price;
    final numPoints = price.length;
    for (int i = 0; i < numPoints; i++) {
      result.add(
        FlSpot(i.toDouble(), price[i]),
      );
    }
    print(price.length);
    return result;
  }
}
