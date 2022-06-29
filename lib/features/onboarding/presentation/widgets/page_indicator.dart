import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';
import 'package:onboarding_login_register/features/onboarding/presentation/widgets/indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Indicator(
          pageIndex: index,
          indicatorIndex: 0,
        ),
        const SizedBox(width: AppSize.s8),
        Indicator(
          pageIndex: index,
          indicatorIndex: 1,
        ),
        const SizedBox(width: AppSize.s8),
        Indicator(
          pageIndex: index,
          indicatorIndex: 2,
        ),
      ],
    );
  }
}
