import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.gr.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';

import '../../core/widgets/containers.dart';

class SelectTitlePage extends StatefulWidget {
  const SelectTitlePage({Key? key}) : super(key: key);

  @override
  _SelectTitlePageState createState() => _SelectTitlePageState();
}

class _SelectTitlePageState extends State<SelectTitlePage> {
  bool jobCont = true;
  bool freeLanceCont = false;
  bool internCont = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Containers(
                width: size.width,
                child: Texts(
                  texts: 'What are you looking for?',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Containers(
                width: size.width,
                child: Texts(
                  texts:
                      'To begin this journey, tell us what type of job you are looking for right now.',
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  color: Colors.grey,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Containers(
                onTap: () {
                  setState(() {
                    jobCont = true;
                    freeLanceCont = false;
                    internCont = false;
                  });
                },
                width: size.width,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: jobCont ? AppColor.kAppBorderColor : Colors.white),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 3),
                      blurRadius: 7.9,
                      color: Colors.black.withOpacity(0.07),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5.r),
                  color: jobCont ? AppColor.kAppStartColor : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Containers(
                            height: size.height,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset('images/job.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Containers(
                            height: size.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Texts(
                                  texts: 'I am looking for new job',
                                  fontSize: size.width * 0.043,
                                  fontWeight: FontWeight.w500,
                                ),
                                Texts(
                                  texts:
                                      'Select if you’re are looking for a full time or part time job.',
                                  fontSize: size.width * 0.035,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w300,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Containers(
                onTap: () {
                  setState(() {
                    freeLanceCont = true;
                    jobCont = false;
                    internCont = false;
                  });
                },
                width: size.width,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: freeLanceCont
                          ? AppColor.kAppBorderColor
                          : Colors.white),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 3),
                      blurRadius: 7.9,
                      color: Colors.black.withOpacity(0.07),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5.r),
                  color: freeLanceCont ? AppColor.kAppStartColor : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Containers(
                            height: size.height,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset('images/freelancing.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Containers(
                            height: size.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Texts(
                                  texts: 'I am looking for Freelancing',
                                  fontSize: size.width * 0.043,
                                  fontWeight: FontWeight.w500,
                                ),
                                Texts(
                                  texts:
                                      'Select if you’re are looking for a freelancing work.',
                                  fontSize: size.width * 0.035,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w300,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Containers(
                onTap: () {
                  setState(() {
                    freeLanceCont = false;
                    jobCont = false;
                    internCont = true;
                  });
                },
                width: size.width,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          internCont ? AppColor.kAppBorderColor : Colors.white),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 3),
                      blurRadius: 7.9,
                      color: Colors.black.withOpacity(0.07),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5.r),
                  color: internCont ? AppColor.kAppStartColor : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Containers(
                            height: size.height,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset('images/intern.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Containers(
                            height: size.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Texts(
                                  texts: 'I am looking for Internship',
                                  fontSize: size.width * 0.043,
                                  fontWeight: FontWeight.w500,
                                ),
                                Texts(
                                  texts:
                                      'Select if you’re are looking for Internship.',
                                  fontSize: size.width * 0.035,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w300,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Containers(
                height: 45,
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Containers(
                      onTap: () {
                        context.router.push(
                          const BasicInformationRoute(),
                        );
                      },
                      width: 155,
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
      ),
    );
  }
}
