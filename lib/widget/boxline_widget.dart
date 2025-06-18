import 'package:flutter/material.dart';

class BoxLineWidget extends StatelessWidget {
  const BoxLineWidget({super.key, required this.width, required this.height});
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 0.5,
        ),
      ),
    );
  }
}
