import 'package:advanced_app/core/helpers/extension.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theming/colors.dart';
import 'package:advanced_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorManger.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
