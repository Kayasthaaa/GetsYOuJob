import 'package:flutter/material.dart';

showAppBottomSheet(BuildContext context, Widget child,
    {AnimationController? animation, TickerProvider? vsync}) {
  return showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    builder: (context) => child,
    isScrollControlled: true,
    useRootNavigator: true,
    isDismissible: true,
    enableDrag: true, //need to change
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  );
}
