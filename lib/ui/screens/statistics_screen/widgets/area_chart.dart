import 'package:flutter/material.dart';
import 'package:budgetpal/domain/models/statistics_element_model/statistics_element.dart';
import 'package:budgetpal/utils/helper.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:sqflite/sqflite.dart';
import 'package:budgetpal/data/expenses_database.dart';
import 'package:budgetpal/domain/repository/database_repository.dart';
import 'package:budgetpal/domain/models/entry_history.dart';

class AreaChart extends StatefulWidget {
  const AreaChart({Key? key, required this.stats}) : super(key: key);
  final List<StatisticsElement> stats;
  //late final DatabaseRepository databaseRepository;

  @override
  State<AreaChart> createState() => _AreaChartState();
}

class _AreaChartState extends State<AreaChart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Initialize category axis
      primaryXAxis: CategoryAxis(),

      // Enable legend
      legend: Legend(isVisible: true, position: LegendPosition.top),

      series: <LineSeries<EntryHistory, String>>[
        LineSeries<EntryHistory, String>( // 10
            name: 'Rent',
            color: fromHex('FFCCBC'),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Apr', 5000),
              EntryHistory('May', 5000)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 9
            name: 'Electronics',
            color: fromHex('FFCDD2'),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Apr', 200),
              EntryHistory('May', 200)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 8
            name: 'Cafe',
            color: fromHex('FFECB3'),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Apr', 330),
              EntryHistory('May', 800)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 7
          name: 'Groceries',
          color: fromHex('C8E6C9'),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Apr', 1360),
            EntryHistory('May', 1260)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
      ]
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
