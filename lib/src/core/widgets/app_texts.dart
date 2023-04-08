import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts extends StatelessWidget {
  const Texts(
      {Key? key,
      required this.texts,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.fontStyle,
      this.decoration,
      this.onTap,
      this.overflow,
      this.maxLines})
      : super(key: key);
  final String texts;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontStyle? fontStyle;
  final void Function()? onTap;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        texts,
        overflow: overflow,
        textAlign: textAlign,
        maxLines: maxLines,
        style: GoogleFonts.hind(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            decoration: decoration,
            fontStyle: fontStyle),
      ),
    );
  }
}
