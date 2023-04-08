// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';
import 'package:gyj/src/core/themes/colors.dart';

class Containers extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final Color? color;
  final Widget? child;
  final void Function()? onTap;
  const Containers(
      {Key? key,
      this.width,
      this.height,
      this.margin,
      this.decoration,
      this.color,
      this.child,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.whiteColor.withOpacity(0.4),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: decoration,
        color: color,
        child: child,
      ),
    );
  }
}
