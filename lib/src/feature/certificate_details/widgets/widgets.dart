import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/containers.dart';

import '../../../core/constants/app_spaces.dart';
import '../../../core/routes/app_router.dart';
import '../../../core/themes/colors.dart';
import '../../../core/widgets/app_texts.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({Key? key, required this.desc}) : super(key: key);
  final String desc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Containers(
            width: size.width,
            height: 70,
            child: Column(
              children: [
                Texts(
                  texts: 'About',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.appColor,
                ),
                const SizedBox(
                  height: 7,
                ),
                Containers(
                  height: 10,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Containers(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          height: 2,
                        ),
                      ),
                      Containers(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.appColor,
                        ),
                        height: 2.4,
                      ),
                      Expanded(
                        child: Containers(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Texts(
              textAlign: TextAlign.justify,
              fontSize: 15.sp,
              color: Colors.grey.shade700,
              texts: desc),
          const SizedBox(
            height: 20,
          ),
          Containers(
            onTap: () {
              context.router.push(const ResourcesScreenRoute());
            },
            height: 51,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColor.appColor,
            ),
            child: Center(
              child: Texts(
                texts: 'Get Certifcation',
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
