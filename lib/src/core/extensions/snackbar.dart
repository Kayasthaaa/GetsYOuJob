import 'package:flutter/material.dart';
import 'package:gyj/src/core/themes/widget_extensions.dart';
import '../themes/app_styles.dart';

extension ContextX on BuildContext {
  //width & height
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  //paddings
  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  void removeFocus() {
    if (FocusScope.of(this).hasFocus || FocusScope.of(this).hasPrimaryFocus) {
      FocusScope.of(this).unfocus();
    }
  }

  showSnackbarError({
    Color? backgroundColor,
    required String message,
    EdgeInsetsGeometry? margin,
    IconData? icon,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          margin: margin,
          backgroundColor: Colors.black87,
          behavior: SnackBarBehavior.floating,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      message,
                      style: AppStyles.text12PxBold.white,
                      overflow: TextOverflow.fade,
                      selectionColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }

  showSnackbarSuccess({
    Color? backgroundColor,
    required String message,
    EdgeInsetsGeometry? margin,
    IconData? icon,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          margin: margin,
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.verified,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    message,
                    style: AppStyles.text12PxBold.white,
                    selectionColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
