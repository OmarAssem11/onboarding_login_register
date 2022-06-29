import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/routes_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/strings_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';
import 'package:onboarding_login_register/core/presentation/widgets/custom_elevated_button.dart';
import 'package:onboarding_login_register/features/onboarding/presentation/widgets/page_indicator.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.all(Insets.i20),
      child: Column(
        children: [
          PageIndicator(
            index: index,
          ),
          const SizedBox(height: AppSize.s18),
          CustomElevatedButton(
            label: AppStrings.getStarted,
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.register),
          ),
          const SizedBox(height: AppSize.s18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.dontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(width: AppSize.s8),
              TextButton(
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.register),
                child: Text(
                  AppStrings.signUp,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
