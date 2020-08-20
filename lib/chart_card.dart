import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartCard extends StatefulWidget {
  ChartCard({Key key, this.width}) : super(key: key);

  final double width;

  @override
  _ChartCardState createState() => _ChartCardState();
}

class _ChartCardState extends State<ChartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
            blurRadius: 2.0,
            spreadRadius: 1.0,
          )
        ],
      ),
      margin: EdgeInsets.all(30.0),
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
      child: LineChart(
        LineChartData(
          lineBarsData: <LineChartBarData>[
            LineChartBarData(
              spots: <FlSpot>[
                FlSpot(2, 10),
                FlSpot(5, 8),
                FlSpot(8, 11),
              ],
            ),
            LineChartBarData(
              spots: <FlSpot>[
                FlSpot(3, 5),
                FlSpot(5, 2),
                FlSpot(9, 9),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
