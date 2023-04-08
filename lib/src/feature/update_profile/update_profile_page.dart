import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import 'package:gyj/src/feature/profile/widget/profile_appbar.dart';

import '../app_start_screens/screens/basic_information/presentation/screen/widgets/texts.dart';

class UpdateProfliePage extends StatelessWidget {
  const UpdateProfliePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: const ProfileBar(
          title: 'Profile',
          visible: 'no',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const InfoTexts(texts: 'First Name'),
            const Textfields(
              autofocus: true,
              labelText: 'First Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Middle Name'),
            const Textfields(
              labelText: 'Middle Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Last Name'),
            const Textfields(
              labelText: 'Last Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Email'),
            const Textfields(
              labelText: 'Email',
              hintText: 'johncena@gmail.com',
            ),
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Phone Number'),
            const Textfields(
              labelText: 'Number',
              hintText: '989999999',
            ),
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Address'),
            const Textfields(
              labelText: 'Address',
            ),
            const SizedBox(
              height: 40,
            ),
            Containers(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: AppColor.appColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Center(
                child: Texts(
                  texts: 'Save',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Containers(
              onTap: () {
                context.router.push(const ChangePasswordRoute());
              },
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.appColor, width: 1),
                borderRadius: BorderRadius.circular(6.r),
                color: AppColor.whiteColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Center(
                child: Texts(
                  texts: 'Change Password',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
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
