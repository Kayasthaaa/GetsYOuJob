// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/colors.dart';

class OTPField extends StatelessWidget {
  final Color? color;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  const OTPField({Key? key, this.color, this.onChanged, this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: true,
        onSaved: onSaved,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        autofocus: true,
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: AppColor.appColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
