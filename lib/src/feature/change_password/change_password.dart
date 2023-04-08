import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import 'package:gyj/src/feature/profile/widget/profile_appbar.dart';

import '../../core/themes/colors.dart';
import '../app_start_screens/screens/basic_information/presentation/screen/widgets/texts.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: const ProfileBar(
          title: 'Change Password',
          visible: 'no',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const InfoTexts(texts: 'Current Password'),
            Textfields(
              labelText: 'Current Password',
              prefixIcon: const Icon(Icons.lock),
              onSuffixPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              obscureText: hidePassword,
              iconSuffix:
                  hidePassword ? Icons.visibility_off_sharp : Icons.visibility,
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'New Password'),
            Textfields(
              labelText: 'New Password',
              prefixIcon: const Icon(Icons.lock),
              onSuffixPressed: () {
                setState(() {
                  hideConfirmPassword = !hideConfirmPassword;
                });
              },
              obscureText: hideConfirmPassword,
              iconSuffix: hideConfirmPassword
                  ? Icons.visibility_off_sharp
                  : Icons.visibility,
            ),
            const SizedBox(
              height: 25,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Texts(
                texts: 'Forgot Password?',
                fontSize: 14.sp,
                color: Colors.grey.shade600,
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 230,
        child: Column(
          children: [
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.appColor,
              ),
              child: Center(
                child: Texts(
                  texts: 'Save',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
