/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GroupedBarChart extends StatelessWidget {
  final bool animate;

  GroupedBarChart({this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      getData(),
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
    );
  }
}

List<charts.Series<WorkHours, String>> getData() {
  final actualWorkHours = [
    new WorkHours('31', 20, Color(0xFFFBF5F2)),
    new WorkHours('7', 25, Color(0xFFFBF5F2)),
    new WorkHours('14', 36, Color(0xFFFBF5F2)),
    new WorkHours('12', 25, Color(0xFFFBF5F2)),
    new WorkHours('28', 35, Color(0xFFFBF5F2)),
  ];

  final myWorkHours = [
    new WorkHours('31', 22, Color(0xFFFE9761)),
    new WorkHours('7', 26, Color(0xFFFE9761)),
    new WorkHours('14', 38, Color(0xFFFE9761)),
    new WorkHours('12', 28, Color(0xFFFE9761)),
    new WorkHours('28', 40, Color(0xFFFE9761)),
  ];

  return [
    new charts.Series<WorkHours, String>(
      id: 'Desktop',
      domainFn: (WorkHours workHours, _) => workHours.date,
      measureFn: (WorkHours workHours, _) => workHours.hour,
      colorFn: (WorkHours workHours, _) => workHours.color,
      data: actualWorkHours,
    ),
    new charts.Series<WorkHours, String>(
      id: 'Tablet',
      domainFn: (WorkHours workHours, _) => workHours.date,
      measureFn: (WorkHours workHours, _) => workHours.hour,
      colorFn: (WorkHours workHours, _) => workHours.color,
      data: myWorkHours,
    ),
  ];
}

class WorkHours {
  final String date;
  final int hour;
  final charts.Color color;

  WorkHours(this.date, this.hour, Color color)
      : this.color = new charts.Color(
          r: color.red,
          g: color.green,
          b: color.blue,
          a: color.alpha,
        );
}
