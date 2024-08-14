
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/commons/colors.dart';

class AppbarAction extends StatelessWidget {
  const AppbarAction({required this.icon, this.stackWidget,this.onPressed, super.key});
  final IconData icon;
  final Widget? stackWidget;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: offWhiteColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            stackWidget ?? const Text(""),

            GestureDetector(
                onTap: onPressed,
                child: Icon(icon))

          ],
        ),
      ),
    );
  }
}
