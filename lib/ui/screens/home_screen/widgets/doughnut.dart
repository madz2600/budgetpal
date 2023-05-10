import 'package:flutter/material.dart';
import 'package:budgetpal/domain/models/statistics_element_model/statistics_element.dart';
import 'package:budgetpal/utils/helper.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart extends StatefulWidget {
  const DoughnutChart({Key? key, required this.stats}) : super(key: key);
  final List<StatisticsElement> stats;

  @override
  State<DoughnutChart> createState() => _BlockChartState();
}

class _BlockChartState extends State<DoughnutChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Center(
        child:SfCircularChart(
          borderWidth: 0,
          margin: EdgeInsets.zero,
          //title: ChartTitle(text: 'Sales by sales person'),
          //legend: Legend(isVisible: true, position: LegendPosition.bottom),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <DoughnutSeries<StatisticsElement, String>>[
            DoughnutSeries<StatisticsElement, String>(
              explode: false,
              explodeIndex: 0,
              dataSource: widget.stats,
              xValueMapper: (StatisticsElement data, _) => data.categoryTitle,
              yValueMapper: (StatisticsElement data, _) => data.totalAmount,
              //dataLabelMapper: (StatisticsElement data, _) => data.categoryTitle,
              //dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ]
        )
      )
    );
    /*
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: List.generate(widget.stats.length, (index) {
            return Flexible(
              flex: (widget.stats[index].monthShare).round(),
              child: AnimatedContainer(
                curve: Curves.easeIn,
                color: fromHex(widget.stats[index].icon.color),
                duration: const Duration(milliseconds: 500),
              ),
            );
          }),
        ),
      ),
    );
    */
  }
}
