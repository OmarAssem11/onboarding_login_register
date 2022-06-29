import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/color_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/routes_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/strings_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';
import 'package:onboarding_login_register/core/presentation/widgets/custom_rounded_button.dart';
import 'package:onboarding_login_register/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:onboarding_login_register/features/onboarding/presentation/widgets/onboarding_footer.dart';
import 'package:onboarding_login_register/gen/assets.gen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen();

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  final _onboardingBodies = [
    OnboardingBody(
      imagePath: Assets.images.onboarding1.path,
      title: AppStrings.onboardingTitle1,
      body: AppStrings.onboardingBody1,
    ),
    OnboardingBody(
      imagePath: Assets.images.onboarding2.path,
      title: AppStrings.onboardingTitle2,
      body: AppStrings.onboardingBody2,
    ),
    OnboardingBody(
      imagePath: Assets.images.onboarding3.path,
      title: AppStrings.onboardingTitle3,
      body: AppStrings.onboardingBody3,
    ),
  ];
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.i8),
                  child: CustomRoundedButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.register),
                    label: AppStrings.skip,
                    color: ColorManager.lightSecondary,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemBuilder: (_, i) {
                  _index = i;
                  return _onboardingBodies[i];
                },
                itemCount: _onboardingBodies.length,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: MediaQuery.of(context).size.height * 0.23,
        child: OnboardingFooter(
          index: _index,
        ),
      ),
    );
  }
}
