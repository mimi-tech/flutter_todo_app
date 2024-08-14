import "package:flutter/material.dart";
import "package:flutter_todo_app/commons/colors.dart";

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.buttonTextStyle,
    super.key,
    this.textColor,
    this.isLoading = false,
  });
  final String title;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final TextStyle? buttonTextStyle;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 56,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all(backgroundColor ?? blueColor),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
          ),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator(color: whiteColor))
            : Text(
          title,
          style: buttonTextStyle ??
              Theme.of(context).textTheme.labelLarge?.copyWith(
                color: textColor ?? whiteColor,
              ),
        ),
      ),
    );
  }
}
