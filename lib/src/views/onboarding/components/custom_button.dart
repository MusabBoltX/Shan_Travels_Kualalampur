import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final Color? buttonColor;
  final Color? textColor, splashColor;
  final double? border;
  final BorderRadius? borderRadius;

  const CustomButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.buttonColor,
    this.splashColor,
    this.textColor,
    this.borderRadius,
    this.border = 40.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor ?? kDarkBlue,
      borderRadius: borderRadius ?? BorderRadius.circular(border!),
      child: InkWell(
        borderRadius: borderRadius ?? BorderRadius.circular(border!),
        splashColor: splashColor ?? kDarkBlue,
        enableFeedback: true,
        onTap: onTap,
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(border!),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
