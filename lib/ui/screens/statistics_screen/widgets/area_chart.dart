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
      primaryXAxis: CategoryAxis(title: AxisTitle(text: 'Date')),

      // Tooltips
      tooltipBehavior: TooltipBehavior(enable: true),

      // Zoom/pan
      zoomPanBehavior: ZoomPanBehavior(
        enablePinching: true,
        //zoomMode: ZoomMode.x,
        enablePanning: true,
      ),

      // Enable legend
      legend: Legend(isVisible: true, position: LegendPosition.bottom, overflowMode: LegendItemOverflowMode.wrap),

      // Data series
      series: <LineSeries<EntryHistory, String>>[
        LineSeries<EntryHistory, String>( // 10
          name: 'Savings',
          color: fromHex('FFCCBC'),
          width: 5,
          markerSettings: const MarkerSettings(isVisible: true),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Oct, 2022', 1000),
            EntryHistory('Nov, 2022', 1000),
            EntryHistory('Dec, 2022', 1000),
            EntryHistory('Jan, 2023', 1000),
            EntryHistory('Feb, 2023', 500),
            EntryHistory('Mar, 2023', 1000),
            EntryHistory('Apr, 2023', 1000),
            EntryHistory('May, 2023', 1000)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Groceries',
            color: fromHex('C8E6C9'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 788),
              EntryHistory('Nov, 2022', 490),
              EntryHistory('Dec, 2022', 745),
              EntryHistory('Jan, 2023', 727),
              EntryHistory('Feb, 2023', 751),
              EntryHistory('Mar, 2023', 756),
              EntryHistory('Apr, 2023', 975),
              EntryHistory('May, 2023', 750)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Rent',
            color: fromHex('FFCCBC'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 1200),
              EntryHistory('Nov, 2022', 1200),
              EntryHistory('Dec, 2022', 1200),
              EntryHistory('Jan, 2023', 1200),
              EntryHistory('Feb, 2023', 1200),
              EntryHistory('Mar, 2023', 1200),
              EntryHistory('Apr, 2023', 1200),
              EntryHistory('May, 2023', 1200)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Utilities',
            color: fromHex('B3E5FC'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 150),
              EntryHistory('Nov, 2022', 150),
              EntryHistory('Dec, 2022', 150),
              EntryHistory('Jan, 2023', 150),
              EntryHistory('Feb, 2023', 150),
              EntryHistory('Mar, 2023', 150),
              EntryHistory('Apr, 2023', 150),
              EntryHistory('May, 2023', 150)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Internet and Phone',
            color: fromHex('FFCDD2'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 100),
              EntryHistory('Nov, 2022', 100),
              EntryHistory('Dec, 2022', 100),
              EntryHistory('Jan, 2023', 100),
              EntryHistory('Feb, 2023', 100),
              EntryHistory('Mar, 2023', 100),
              EntryHistory('Apr, 2023', 100),
              EntryHistory('May, 2023', 100)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Transportation',
            color: fromHex('B2EBF2'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 263),
              EntryHistory('Nov, 2022', 258),
              EntryHistory('Dec, 2022', 272),
              EntryHistory('Jan, 2023', 286),
              EntryHistory('Feb, 2023', 432),
              EntryHistory('Mar, 2023', 267),
              EntryHistory('Apr, 2023', 270),
              EntryHistory('May, 2023', 250)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Dining Out',
            color: fromHex('C5CAE9'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 499),
              EntryHistory('Nov, 2022', 470),
              EntryHistory('Dec, 2022', 480),
              EntryHistory('Jan, 2023', 436),
              EntryHistory('Feb, 2023', 436),
              EntryHistory('Mar, 2023', 432),
              EntryHistory('Apr, 2023', 408),
              EntryHistory('May, 2023', 400)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Entertainment',
            color: fromHex('DCEDC8'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 157),
              EntryHistory('Nov, 2022', 167),
              EntryHistory('Dec, 2022', 169),
              EntryHistory('Jan, 2023', 169),
              EntryHistory('Feb, 2023', 165),
              EntryHistory('Mar, 2023', 178),
              EntryHistory('Apr, 2023', 180),
              EntryHistory('May, 2023', 200)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Gym Membership',
            color: fromHex('E6EE9C'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 50),
              EntryHistory('Nov, 2022', 50),
              EntryHistory('Dec, 2022', 50),
              EntryHistory('Jan, 2023', 50),
              EntryHistory('Feb, 2023', 50),
              EntryHistory('Mar, 2023', 50),
              EntryHistory('Apr, 2023', 50),
              EntryHistory('May, 2023', 50)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Clothing',
            color: fromHex('C8E6C9'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 172),
              EntryHistory('Nov, 2022', 165),
              EntryHistory('Dec, 2022', 157),
              EntryHistory('Jan, 2023', 30),
              EntryHistory('Feb, 2023', 20),
              EntryHistory('Mar, 2023', 139),
              EntryHistory('Apr, 2023', 563),
              EntryHistory('May, 2023', 150)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Medical Expenses',
            color: fromHex('F8BBD0'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 100),
              EntryHistory('Nov, 2022', 100),
              EntryHistory('Dec, 2022', 100),
              EntryHistory('Jan, 2023', 100),
              EntryHistory('Feb, 2023', 100),
              EntryHistory('Mar, 2023', 100),
              EntryHistory('Apr, 2023', 100),
              EntryHistory('May, 2023', 100)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 10
            name: 'Insurance',
            color: fromHex('B39DDB'),
            width: 5,
            markerSettings: const MarkerSettings(isVisible: true),
            // Bind data source
            dataSource:  <EntryHistory>[
              EntryHistory('Oct, 2022', 80),
              EntryHistory('Nov, 2022', 80),
              EntryHistory('Dec, 2022', 80),
              EntryHistory('Jan, 2023', 80),
              EntryHistory('Feb, 2023', 80),
              EntryHistory('Mar, 2023', 80),
              EntryHistory('Apr, 2023', 80),
              EntryHistory('May, 2023', 80)
            ],
            xValueMapper: (EntryHistory eh, _) => eh.year,
            yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
      ]
      /*
      series: <LineSeries<EntryHistory, String>>[
        LineSeries<EntryHistory, String>( // 10
          name: 'Rent',
          color: fromHex('FFCCBC'),
          width: 5,
          markerSettings: const MarkerSettings(isVisible: true),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Mar', 3500),
            EntryHistory('Apr', 5000),
            EntryHistory('May', 5000)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 9
          name: 'Electronics',
          color: fromHex('FFCDD2'),
          width: 5,
          markerSettings: const MarkerSettings(isVisible: true),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Mar', 150),
            EntryHistory('Apr', 200),
            EntryHistory('May', 200)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 8
          name: 'Cafe',
          color: fromHex('FFECB3'),
          width: 5,
          markerSettings: const MarkerSettings(isVisible: true),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Mar', 110),
            EntryHistory('Apr', 330),
            EntryHistory('May', 800)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
        LineSeries<EntryHistory, String>( // 7
          name: 'Groceries',
          color: fromHex('C8E6C9'),
          width: 5,
          markerSettings: const MarkerSettings(isVisible: true),
          // Bind data source
          dataSource:  <EntryHistory>[
            EntryHistory('Mar', 1610),
            EntryHistory('Apr', 1360),
            EntryHistory('May', 1260)
          ],
          xValueMapper: (EntryHistory eh, _) => eh.year,
          yValueMapper: (EntryHistory eh, _) => eh.amount
        ),
      ]
      */
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
