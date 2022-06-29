import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/color_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    required this.pageIndex,
    required this.indicatorIndex,
  });

  final int pageIndex;
  final int indicatorIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s8,
      width: AppSize.s18,
      decoration: BoxDecoration(
        color: indicatorIndex == pageIndex
            ? ColorManager.secondary
            : ColorManager.lightGrey,
        borderRadius: const BorderRadius.all(Radius.circular(Insets.i4)),
      ),
    );
  }
}
