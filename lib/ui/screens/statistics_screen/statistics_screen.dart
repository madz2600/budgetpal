import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budgetpal/domain/resources/app_text_styles.dart';
import 'package:budgetpal/generated/locale_keys.g.dart';
import 'package:budgetpal/ui/bloc/entries_control_bloc/entries_control_bloc.dart';
import 'package:budgetpal/ui/widgets/main_app_bar.dart';
import 'package:budgetpal/ui/widgets/month_picker/month_picker.dart';
import 'package:budgetpal/utils/helper.dart';

import 'widgets/area_chart.dart';
import 'widgets/block_chart.dart';
import 'widgets/statistics_element_builder.dart';


class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);
  static const routeName = 'statistics_screen';

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {

  bool historyView = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EntriesControlBloc, EntriesControlState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          /*
          appBar: const MainAppBar(
            leading: Text(
              'Statistics',
              style: AppStyles.menuPageTitle,
            ),
          ),
           */
          appBar: const MainAppBar(
            leading: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Statistics',
                style: AppStyles.menuPageTitle,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 50),
              FloatingActionButton.extended(
                icon: const Icon(Icons.phone),
                onPressed: () {},
                label: const Text('Contact advisor'),
              ),
              FloatingActionButton(
                backgroundColor: fromHex('888888'),
                /*
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                ),
                //label: Text(LocaleKeys.report.tr()),
                //label: const Text(''),
                onPressed: state.statistics.isNotEmpty
                    ? () async {
                  await createOpenPdf(
                      statistics: state.statistics,
                      reportDate: state.reportDate!);
                }
                    : null,

               */
                onPressed: state.statistics.isNotEmpty
                    ? () async {
                  await createOpenPdf(
                      statistics: state.statistics,
                      reportDate: state.reportDate!);
                }
                    : null,
                child: const Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: historyView,
                    onChanged: (val) => setState(() => historyView = val),
                  ),
                  const Text('Show full history'),
                ],
              ),
              if (historyView) ... [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 500,
                    child: AreaChart(
                      stats: state.statistics,
                    ),
                  ),
                ),
              ] else ... [
                const MonthPicker(
                  selectType: 'exact',
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    LocaleKeys.overview.tr(),
                    style: AppStyles.overline,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: BlockChart(
                    stats: state.statistics,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      LocaleKeys.details.tr(),
                      style: AppStyles.overline,
                    ),
                  ),
                ),
                const StatisticsElementBuilder(),
              ],
            ],
          ),
        );
      },
    );
  }
}