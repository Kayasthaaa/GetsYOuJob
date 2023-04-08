import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/widgets/textfields.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/containers.dart';
import '../basic_information/presentation/screen/widgets/texts.dart';

class AboutScreenPage extends StatefulWidget {
  const AboutScreenPage({Key? key}) : super(key: key);

  @override
  _AboutScreenPageState createState() => _AboutScreenPageState();
}

class _AboutScreenPageState extends State<AboutScreenPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const InfoTexts(texts: 'Job Title'),
            const Textfields(
              labelText: 'Job Title',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'About'),
            const Textfields(
              maxLines: 10,
              labelText: 'About you',
              hintText: 'Write something about you',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Experience  (in years)'),
            const Textfields(
              labelText: 'Experience',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Current Salary'),
            const Textfields(
              labelText: 'Current Salary',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Expected Salary'),
            const Textfields(
              labelText: 'Expected Salary',
            ),
            const SizedBox(
              height: 37,
            ),
            Containers(
              onTap: () {
                context.router.push(const SkillsScreenRoute());
              },
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              height: 51,
              width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'Skip',
                    fontWeight: FontWeight.w500,
                    fontSize: 19.sp,
                    color: AppColor.appColor,
                  ),
                  Containers(
                    onTap: () {
                      context.router.push(const SkillsScreenRoute());
                    },
                    width: 165,
                    decoration: BoxDecoration(
                      color: AppColor.appColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Texts(
                        texts: 'Continue',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
