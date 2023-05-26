import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? samll;
  final Widget? medium;
  final Widget? large;
  final Widget desktop;

  const Responsive({
    Key? key,
    this.samll,
    this.large,
    required this.desktop,
    this.medium,
  }) : super(key: key);

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width <= 400;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 600 && large != null) {
      return large!;
    } else if (_size.width >= 400 && medium != null) {
      return medium!;
    } else {
      return samll!;
    }
  }
}
