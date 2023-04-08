import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

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
            child: Image.asset('images/screenTwo.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          Containers(
            width: size.width,
            child: Center(
              child: Texts(
                texts: 'Make your portfolio better!',
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
                  'Start by updating all your details, education,\n trainings, experience, skills, availability and \nmore.',
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
