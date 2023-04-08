import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Containers(
            width: size.width,
            height: 300,
            color: Colors.white,
            child: Image.asset(
              'images/screenThree.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Containers(
            width: size.width,
            child: Center(
              child: Texts(
                texts: 'Get hired for your skills!',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Containers(
            width: size.width,
            child: Texts(
              texts:
                  'Getsyoujob gives you an opportunity to share \nyour profile so the companies can directly reach \nout to you. ',
              textAlign: TextAlign.center,
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
