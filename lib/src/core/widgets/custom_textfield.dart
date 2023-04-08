// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class CustomField extends StatelessWidget {
  CustomField({
    Key? key,
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

  // FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Containers(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0),
          borderRadius: BorderRadius.circular(5.r)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          5.r,
        ),
        child: TextFormField(
          maxLines: maxLines ?? 1,
          style: textFieldStyle,
          readOnly: readOnly,
          onChanged: onChanged,
          onSaved: onSaved,
          validator: validator,
          onEditingComplete: onEditingComplete,
          controller: controller,
          autofocus: autofocus,
          keyboardType: inputType,
          obscureText: obscureText,
          obscuringCharacter: '*',
          textInputAction: TextInputAction.next,
          focusNode: focusNode,
          onFieldSubmitted: (_) {
            FocusScope.of(context).requestFocus(focusNode);
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
            prefixIcon: prefixIcon,
            border: const OutlineInputBorder(),
            prefixIconColor: AppColor.appColor,
            suffixIcon: IconButton(
              icon: Icon(iconSuffix),
              onPressed: onSuffixPressed,
            ),
            labelStyle: GoogleFonts.inter(),
            hintText: hintText,
            hintStyle: GoogleFonts.inter(color: AppColor.appColor),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  strokeAlign: 20, color: AppColor.appColor, width: 11.0),
            ),
          ),
        ),
      ),
    );
  }
}
