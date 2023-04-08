import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_texts.dart';
import '../../../core/widgets/containers.dart';

class basicAppBar extends StatelessWidget {
  const basicAppBar(
      {Key? key, required this.title, required this.backBtn, this.onTap})
      : super(key: key);
  final String title;
  final String backBtn;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Visibility(
            visible: backBtn == 'yes' ? true : false,
            child: GestureDetector(
              onTap: onTap,
              child: Containers(
                height: size.height,
                child: const Icon(
                  Icons.west,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Containers(
              child: Texts(
                texts: title,
                fontSize: 20.sp,
                color: Colors.black,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
