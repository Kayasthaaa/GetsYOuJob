// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/feature/home_screen/widgets/home_appBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int _currentPage = 0;
  Timer? _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (Timer timer) {
        if (_currentPage < 2) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              margin: const EdgeInsets.only(left: 15, right: 20),
              onTap: () {
                print(_currentPage);
              },
              height: 220,
              child: PageView(
                controller: _pageController,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 10),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/slider.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 10),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/slider.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 10),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/slider.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Containers(
              height: 10,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                    spacing: 15,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.teal),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Containers(
              onTap: () {
                context.router.push(const TrainingRoute());
              },
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'Related Trainings',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Texts(
                    texts: 'See All',
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Containers(
              margin: const EdgeInsets.only(left: 12, right: kDefaultSpacing),
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.23),
                          )
                        ],
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      width: size.width / 1.5,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Containers(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'RPA Nepal, Kupondole',
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Texts(
                                    texts: 'User Experience Training',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: '1 weeks ago',
                                        fontSize: 16.sp,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Texts(
                                        texts: '100 Applicants',
                                        fontSize: 16.sp,
                                        color: AppColor.appColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.23),
                          )
                        ],
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      width: size.width / 1.5,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Containers(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'RPA Nepal, Kupondole',
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Texts(
                                    texts: 'User Experience Training',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: '1 weeks ago',
                                        fontSize: 16.sp,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Texts(
                                        texts: '100 Applicants',
                                        fontSize: 16.sp,
                                        color: AppColor.appColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.23),
                          )
                        ],
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      width: size.width / 1.5,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 13,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Containers(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'RPA Nepal, Kupondole',
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Texts(
                                    texts: 'User Experience Training',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: '1 weeks ago',
                                        fontSize: 16.sp,
                                        color: Colors.grey.shade600,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Texts(
                                        texts: '100 Applicants',
                                        fontSize: 16.sp,
                                        color: AppColor.appColor,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'Related Certificates',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Texts(
                    texts: 'See All',
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Containers(
              width: size.width,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(color: Colors.grey.shade400, width: 1),
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    Containers(
                      width: size.width,
                      height: 75,
                      child: Row(
                        children: [
                          Containers(
                            width: 55,
                            height: size.height,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 28.0),
                              child: Icon(
                                Icons.extension,
                                size: 40,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Containers(
                              height: size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Foundation of UX',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Texts(
                                    texts: 'Google',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Containers(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: size.width,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Containers(
                        margin: const EdgeInsets.symmetric(horizontal: 9),
                        width: size.width,
                        child: Texts(
                          texts:
                              'Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.',
                          textAlign: TextAlign.justify,
                          fontSize: size.width * 0.033,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Containers(
              width: size.width,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(color: Colors.grey.shade400, width: 1),
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    Containers(
                      width: size.width,
                      height: 75,
                      child: Row(
                        children: [
                          Containers(
                            width: 55,
                            height: size.height,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 28.0),
                              child: Icon(
                                Icons.extension,
                                size: 40,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Containers(
                              height: size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Foundation of UX',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Texts(
                                    texts: 'Google',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Containers(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: size.width,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Containers(
                        margin: const EdgeInsets.symmetric(horizontal: 9),
                        width: size.width,
                        child: Texts(
                          texts:
                              'Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.',
                          textAlign: TextAlign.justify,
                          fontSize: size.width * 0.033,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Containers(
              width: size.width,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(color: Colors.grey.shade400, width: 1),
              ),
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    Containers(
                      width: size.width,
                      height: 75,
                      child: Row(
                        children: [
                          Containers(
                            width: 55,
                            height: size.height,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 28.0),
                              child: Icon(
                                Icons.extension,
                                size: 40,
                                color: Colors.deepPurple.shade200,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Containers(
                              height: size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Foundation of UX',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Texts(
                                    texts: 'Google',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: SizedBox(
                                height: 30,
                                width: 22,
                                child: Image.asset(
                                  'images/bookmark.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Containers(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: size.width,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Containers(
                        margin: const EdgeInsets.symmetric(horizontal: 9),
                        width: size.width,
                        child: Texts(
                          texts:
                              'Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.',
                          textAlign: TextAlign.justify,
                          fontSize: size.width * 0.033,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'Resources',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Texts(
                    texts: 'See All',
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Containers(
              margin: const EdgeInsets.only(right: kDefaultSpacing, left: 14),
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 220,
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 214, 219, 247),
                      ),
                      child: Containers(
                        color: Colors.amber,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Containers(
                              width: 60,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.indigo.shade600,
                              ),
                              child: const Icon(
                                Icons.fingerprint,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            Expanded(
                              child: Containers(
                                width: size.width,
                                child: Column(
                                  children: [
                                    Texts(
                                      texts: 'Website Designs',
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Texts(
                                      texts: '14 Resources',
                                      fontSize: 16.sp,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 220,
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pink.shade50,
                      ),
                      child: Containers(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          children: [
                            Containers(
                              width: 60,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.red.shade600,
                              ),
                              child: const Icon(
                                Icons.local_post_office,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Containers(
                                width: size.width,
                                child: Column(
                                  children: [
                                    Texts(
                                      texts: 'Product Designs',
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Texts(
                                      texts: '14 Resources',
                                      fontSize: 16.sp,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 220,
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.deepPurple.shade100,
                      ),
                      child: Containers(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          children: [
                            Containers(
                              width: 60,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.deepPurple.shade400,
                              ),
                              child: const Icon(
                                Icons.public,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Containers(
                                width: size.width,
                                child: Column(
                                  children: [
                                    Texts(
                                      texts: 'Product Designs',
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Texts(
                                      texts: '14 Resources',
                                      fontSize: 16.sp,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texts(
                    texts: 'Jobs for your Profile',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Texts(
                    onTap: () {
                      context.router.push(
                        const JobsScreenRoute(),
                      );
                    },
                    texts: 'See All',
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 330,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: 9,
                      color: Colors.black.withOpacity(0.07))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey.shade50,
              ),
              child: Column(
                children: [
                  Containers(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                    width: size.width,
                    height: 70,
                    child: Row(
                      children: [
                        Containers(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.red.shade800,
                          ),
                          child: const Icon(
                            Icons.sports_soccer,
                            size: 42,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Containers(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Webflow Inc.',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Texts(
                                    texts: 'Senior UI/UX Designer',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              height: 30,
                              width: 22,
                              child: Image.asset(
                                'images/bookmark.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Design',
                                color: AppColor.appColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 240, 240, 243),
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Urgent',
                                color: Colors.indigo.shade400,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Full-Time',
                                color: Colors.red,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Sanepa, Lalitpur',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Rs. 85,000 / Month',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Texts(
                      texts:
                          'Senior UX Researcher needed, for collaborate with team and developer as full time designer. by having good communication skills,',
                      color: Colors.grey,
                      fontSize: 17.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 330,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: 9,
                      color: Colors.black.withOpacity(0.07))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey.shade50,
              ),
              child: Column(
                children: [
                  Containers(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                    width: size.width,
                    height: 70,
                    child: Row(
                      children: [
                        Containers(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.indigo.shade600,
                          ),
                          child: const Icon(
                            Icons.wallet,
                            size: 42,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Containers(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Dribble Tech',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Texts(
                                    texts: 'Senior UI/UX Designer',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              height: 30,
                              width: 22,
                              child: Image.asset(
                                'images/bookmark.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Design',
                                color: AppColor.appColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 240, 240, 243),
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Urgent',
                                color: Colors.indigo.shade400,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Full-Time',
                                color: Colors.red,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Sanepa, Lalitpur',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Rs. 85,000 / Month',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Texts(
                      texts:
                          'Senior UX Researcher needed, for collaborate with team and developer as full time designer. by having good communication skills,',
                      color: Colors.grey,
                      fontSize: 17.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 330,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: 9,
                      color: Colors.black.withOpacity(0.07))
                ],
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey.shade50,
              ),
              child: Column(
                children: [
                  Containers(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 10),
                    width: size.width,
                    height: 70,
                    child: Row(
                      children: [
                        Containers(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.orange.shade600,
                          ),
                          child: const Icon(
                            Icons.cell_tower,
                            size: 42,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Containers(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Texts(
                                    texts: 'Smart Cell',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Texts(
                                    texts: 'Senior UI/UX Designer',
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              height: 30,
                              width: 22,
                              child: Image.asset(
                                'images/bookmark.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Design',
                                color: AppColor.appColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 240, 240, 243),
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Urgent',
                                color: Colors.indigo.shade400,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Containers(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink.shade50,
                            ),
                            child: Center(
                              child: Texts(
                                texts: 'Full-Time',
                                color: Colors.red,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Sanepa, Lalitpur',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Texts(
                          texts: 'Rs. 85,000 / Month',
                          fontSize: 16.sp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    width: size.width,
                    height: 50,
                    child: Texts(
                      texts:
                          'Senior UX Researcher needed, for collaborate with team and developer as full time designer. by having good communication skills,',
                      color: Colors.grey,
                      fontSize: 17.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
          ],
        ),
      ),
    );
  }
}
