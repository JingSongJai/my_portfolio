import 'package:flutter/material.dart';

class DotBoxWidget extends StatelessWidget {
  const DotBoxWidget({
    super.key,
    this.count = 25,
    this.space = 17,
    required this.width,
    required this.height,
  });
  final int count;
  final double width, height, space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: space,
        crossAxisSpacing: space,
        childAspectRatio: 1,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(count, (_) => _buildDot(context)),
      ),
    );
  }

  Widget _buildDot(context) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
