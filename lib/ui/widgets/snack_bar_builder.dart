import 'package:flutter/material.dart';
import 'package:budgetpal/domain/resources/app_colors.dart';
import 'package:budgetpal/main.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? buildShowSnackBar
    (BuildContext context, String message) {
  return BudgetPalApp.rootScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.only(left: 16, right: 16, bottom: MediaQuery.of
      (context).size.height-100,),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    backgroundColor: AppColors.title,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        InkWell(
          onTap: () {
            BudgetPalApp.rootScaffoldMessengerKey.currentState?.hideCurrentSnackBar();
          },
          child: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        )
      ],
    ),
  ));
}
