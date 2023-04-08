import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';

import '../../../../../../../core/widgets/app_texts.dart';
import '../../../../../../../core/widgets/containers.dart';

class InfoTexts extends StatelessWidget {
  const InfoTexts({Key? key, required this.texts}) : super(key: key);
  final String texts;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Containers(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
          width: size.width,
          height: 30,
          child: Texts(
            texts: texts,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6,
        )
      ],
    );
  }
}
