import 'package:budgetpal/ui/screens/home_screen/widgets/doughnut.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:budgetpal/domain/resources/app_icons.dart';
import 'package:budgetpal/generated/locale_keys.g.dart';
import 'package:budgetpal/ui/bloc/entries_control_bloc/entries_control_bloc.dart';
import 'package:budgetpal/ui/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:budgetpal/ui/screens/add_entry_screen/add_entry_screen.dart';
import 'package:budgetpal/ui/widgets/entries_list.dart';
import 'package:budgetpal/ui/widgets/main_app_bar.dart';
import 'package:budgetpal/ui/widgets/month_picker/month_picker.dart';

import 'package:budgetpal/ui/screens/statistics_screen/widgets/statistics_element_builder.dart';
import 'widgets/doughnut.dart';
import 'widgets/balance.dart';
import 'widgets/home_leading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const MainAppBar(leading: HomeLeading(),),
      appBar: const MainAppBar(leading: HomeLeading(),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: SvgPicture.asset(
          AppIcons.addPlus,
          color: Colors.white,
        ),
        label: Text(LocaleKeys.add_new.tr()),
        onPressed: () {
          context
              .read<NavigationBloc>()
              .add(NavigateTab(tabIndex: 3, route: AddEntryScreen.routeName));
        },
      ),
      body: BlocConsumer<EntriesControlBloc, EntriesControlState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0,),
            child: Column(
              children: [
                const MonthPicker(
                  //selectType: 'range',
                  selectType: 'exact',
                ),
                DoughnutChart(stats: state.statistics),
                const BalanceWidget(),
                const SizedBox(
                  height: 8,
                ),
                const EntriesListBuilder(),
                /*
                Visibility(
                    child: const StatisticsElementBuilder(),
                    visible: false,
                ),
                */
              ],
            ),
          );
        },
      ),
    );
  }
}




