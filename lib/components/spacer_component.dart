import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
  final double size;
  final bool isFull;
  final bool isHorizonatal;

  const SpacerComponent(
      {Key? key,
      this.size = 16,
      this.isFull = false,
      this.isHorizonatal = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFull
        ? const Spacer()
        : SizedBox(
            height: size,
            width: isHorizonatal ? size : null,
          );
  }
}
