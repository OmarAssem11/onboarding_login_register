import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/color_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    required this.onPressed,
    required this.label,
    required this.color,
  });

  final VoidCallback onPressed;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Insets.i20)),
      ),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: ColorManager.darkGrey),
      ),
    );
  }
}
