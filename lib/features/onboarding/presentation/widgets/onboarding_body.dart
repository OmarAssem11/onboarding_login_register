import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    required this.imagePath,
    required this.title,
    required this.body,
  });

  final String imagePath;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.i20),
      child: Column(
        children: [
          Image.asset(imagePath),
          Text(
            title,
            style: textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSize.s16),
          Text(
            body,
            style: textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
