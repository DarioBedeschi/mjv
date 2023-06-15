import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconBunttonComponent extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color? color;
  final Function()? onPressed;

  const IconBunttonComponent({
    super.key,
    this.size = 24,
    this.icon = Icons.add,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      iconSize: size,
      onPressed: onPressed,
    );
  }
}
