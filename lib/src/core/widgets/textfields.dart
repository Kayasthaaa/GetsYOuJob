import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';

import '../themes/app_styles.dart';
import '../themes/colors.dart';

class Textfields extends StatelessWidget {
  const Textfields({
    Key? key,
    this.title,
    this.hintText,
    this.controller,
    this.border,
    this.hintStyle,
    this.readOnly = false,
    this.prefixIcon,
    this.textFieldStyle,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.onEditingComplete,
    this.inputType,
    this.obscureText = false,
    this.maxLines,
    this.filled,
    this.autofocus = false,
    this.iconSuffix,
    this.onTap,
    this.focusColor,
    this.fillColor,
    this.enabled = true,
    this.onSuffixPressed,
    this.labelText,
    this.icon,
    this.focusedBorder,
    this.enabledBorder,
    this.focusNode,
  }) : super(key: key);
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final InputBorder? border;
  final TextStyle? hintStyle;
  final bool readOnly;
  final Widget? prefixIcon;
  final TextStyle? textFieldStyle;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final TextInputType? inputType;
  final bool obscureText;
  final int? maxLines;
  final bool? filled;
  final FocusNode? focusNode;
  final bool autofocus;
  final InputBorder? enabledBorder;
  final IconData? iconSuffix;
  final Function()? onTap;
  final Color? focusColor;
  final IconData? icon;
  final Color? fillColor;
  final InputBorder? focusedBorder;
  final bool enabled;
  final void Function()? onSuffixPressed;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      child: TextFormField(
        maxLines: maxLines ?? 1,
        style: textFieldStyle,
        readOnly: readOnly,
        onChanged: onChanged,
        onSaved: onSaved,
        focusNode: focusNode,
        validator: validator,
        onEditingComplete: onEditingComplete,
        controller: controller,
        autofocus: autofocus,
        keyboardType: inputType,
        obscureText: obscureText,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          focusColor: focusColor,
          fillColor: fillColor,
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          filled: filled,
          enabled: enabled,
          contentPadding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.appColor,
            ),
            borderRadius: BorderRadius.circular(5.r),
          ),
          hintText: hintText,
          labelText: labelText,
          labelStyle: GoogleFonts.inter(),
          alignLabelWithHint: true,
          prefixIcon: prefixIcon,
          suffixIcon: IconButton(
            icon: Icon(iconSuffix),
            onPressed: onSuffixPressed,
          ),
          hintStyle: hintStyle,
          label: title != null
              ? Text(
                  title ?? '',
                  style: AppStyles.text14PxRegular,
                )
              : null,
        ),
      ),
    );
  }
}
