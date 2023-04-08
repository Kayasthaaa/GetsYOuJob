// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/more_texts.dart';
import 'package:gyj/src/feature/profile/widget/profile_appbar.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: ProfileBar(
          profileTap: () {
            context.router.push(
              const UpdateProflieRoute(),
            );
          },
          title: 'Profile',
          backBtn: 'no',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: AppColor.appColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                child: Container(
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Containers(
                          height: size.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Texts(
                                texts: 'My CV',
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Texts(
                                texts: 'MyCv_.pdf',
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Containers(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Texts(
                            texts: 'View CV',
                            color: AppColor.appColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Containers(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'About Me',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  const Icon(
                    Icons.edit_outlined,
                    size: 25,
                    color: AppColor.appColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            MoreTexts(
                textAlign: TextAlign.justify,
                fontSize: 16.sp,
                color: Colors.grey.shade600,
                texts:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti  '),
            const SizedBox(
              height: 16,
            ),
            Divider(
              thickness: 0.8,
              color: Colors.grey.shade400,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 70,
        child: Column(
          children: [
            Containers(
              onTap: () {
                context.router.replace(const LoginRoute());
              },
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: AppColor.appColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Center(
                child: Texts(
                  texts: 'Sign Out',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
