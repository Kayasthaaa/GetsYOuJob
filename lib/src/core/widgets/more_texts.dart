import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:readmore/readmore.dart';

class MoreTexts extends StatelessWidget {
  const MoreTexts(
      {Key? key,
      required this.texts,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.color})
      : super(key: key);
  final String texts;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      child: ReadMoreText(
        texts,
        textAlign: textAlign,
        trimLines: 7,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Read More...',
        trimExpandedText: 'Show less',
        moreStyle: GoogleFonts.inter(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: AppColor.appColor),
        style: GoogleFonts.inter(
            fontSize: fontSize, fontWeight: fontWeight, color: color),
      ),
    );
  }
}
