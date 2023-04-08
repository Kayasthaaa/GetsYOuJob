import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/feature/app_start_screens/screens/onboarding_screem/widgets/screen_one.dart';
import 'package:gyj/src/feature/app_start_screens/screens/onboarding_screem/widgets/screen_three.dart';
import 'package:gyj/src/feature/app_start_screens/screens/onboarding_screem/widgets/screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenPage extends StatefulWidget {
  const OnBoardingScreenPage({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenPageState createState() => _OnBoardingScreenPageState();
}

class _OnBoardingScreenPageState extends State<OnBoardingScreenPage> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(bottom: 140, top: size.height * 0.17),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          controller: controller,
          children: [
            const ScreenOne(),
            const ScreenTwo(),
            const ScreenThree(),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 140,
        child: Column(
          children: [
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    spacing: 15,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.teal),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            isLastPage
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Containers(
                      onTap: () {},
                      width: size.width,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.appColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Texts(
                            texts: "Let's Get Started",
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.east,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(
                        onTap: () => controller.jumpToPage(2),
                        texts: 'Skip',
                        color: AppColor.appColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Texts(
                        onTap: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        texts: 'Next',
                        color: AppColor.appColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
