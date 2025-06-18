import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.icon,
  });
  final Function() onPressed;
  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          color: Theme.of(context).colorScheme.tertiary,
          fontFamily: Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
        ),
      ),
      icon: icon,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
