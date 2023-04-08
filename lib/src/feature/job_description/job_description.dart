// ignore_for_file: prefer_single_quotes

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/feature/job_description/widgets/job_desc_appbar.dart';
import 'package:gyj/src/feature/job_description/widgets/job_desc_container.dart';
import '../../core/themes/colors.dart';

class JobDescriptionPage extends StatelessWidget {
  const JobDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 260,
        backgroundColor: AppColor.appColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(6.r),
          ),
        ),
        flexibleSpace: const JobDetailsAppBar(
          title: 'User Experience Training',
          semiTitle: 'RPA Nepal, Kupondole',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: [
            const JobDetailsContainer(
              desc:
                  '1. Write codes as per company standards to develop high-end websites in PHP/MySQL in Laravel framework. \n2. Analysis, design, development, deployment, and maintenance of projects independently. \n3. Build efficient, testable, and reusable PHP modules',
              requirements:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing ",
            ),
            Containers(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.appColor,
              ),
              child: Center(
                child: Texts(
                  texts: 'Apply Now',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              width: size.width,
            ),
            const SizedBox(
              height: 15,
            ),
            Containers(
              onTap: () {
                context.router.push(const JobsCompanyDetailsRoute());
              },
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.appColor, width: 2),
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.whiteColor,
              ),
              child: Center(
                child: Texts(
                  texts: 'Company Profile',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.appColor,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
