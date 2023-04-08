import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class ResourcesDetailsPage extends StatelessWidget {
  const ResourcesDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Resources'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              width: size.width,
              height: 255,
              child: Row(
                children: [
                  Expanded(
                    child: Containers(
                      width: size.width,
                      child: Column(
                        children: [
                          Containers(
                            height: 150,
                            width: size.width,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: size.width,
                                  height: size.height,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(11.r),
                                        topRight: Radius.circular(11.r)),
                                    child: Image.asset(
                                      'images/appBackground.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Containers(
                                    width: size.width / 4.2,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: size.height,
                                          width: 48,
                                          child: Image.asset(
                                            'images/rpa.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Containers(
                                              height: 26,
                                              color: AppColor.appColor,
                                              child: Center(
                                                child: Texts(
                                                  texts: 'Free',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Containers(
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Texts(
                                    texts: 'Dr. Ram Shrestha',
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                  Texts(
                                    texts: 'The Professional Art Masterclass',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: 'Visit Website',
                                        fontSize: 14.sp,
                                        color: AppColor.appColor,
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Icon(
                                        Icons.east,
                                        size: 20,
                                        color: AppColor.appColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Containers(
                      width: size.width,
                      child: Column(
                        children: [
                          Containers(
                            height: 150,
                            width: size.width,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: size.width,
                                  height: size.height,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(11.r),
                                        topRight: Radius.circular(11.r)),
                                    child: Image.asset(
                                      'images/appBack.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Containers(
                                    width: size.width / 4.2,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: size.height,
                                          width: 48,
                                          child: Image.asset(
                                            'images/rpa.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Containers(
                                              height: 26,
                                              color: AppColor.appColor,
                                              child: Center(
                                                child: Texts(
                                                  texts: 'Free',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Containers(
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Texts(
                                    texts: 'Dr. Ram Shrestha',
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                  Texts(
                                    texts: 'The Professional Art Masterclass',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: 'Visit Website',
                                        fontSize: 14.sp,
                                        color: AppColor.appColor,
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Icon(
                                        Icons.east,
                                        size: 20,
                                        color: AppColor.appColor,
                                      )
                                    ],
                                  ),
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
              height: 30,
            ),
            Containers(
              width: size.width,
              height: 255,
              child: Row(
                children: [
                  Expanded(
                    child: Containers(
                      width: size.width,
                      child: Column(
                        children: [
                          Containers(
                            height: 150,
                            width: size.width,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: size.width,
                                  height: size.height,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(11.r),
                                        topRight: Radius.circular(11.r)),
                                    child: Image.asset(
                                      'images/appBack.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Containers(
                                    width: size.width / 4.2,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: size.height,
                                          width: 48,
                                          child: Image.asset(
                                            'images/rpa.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Containers(
                                              height: 26,
                                              color: AppColor.appColor,
                                              child: Center(
                                                child: Texts(
                                                  texts: 'Free',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Containers(
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Texts(
                                    texts: 'Dr. Ram Shrestha',
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                  Texts(
                                    texts: 'The Professional Art Masterclass',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: 'Visit Website',
                                        fontSize: 14.sp,
                                        color: AppColor.appColor,
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Icon(
                                        Icons.east,
                                        size: 20,
                                        color: AppColor.appColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Containers(
                      width: size.width,
                      child: Column(
                        children: [
                          Containers(
                            height: 150,
                            width: size.width,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: size.width,
                                  height: size.height,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(11.r),
                                        topRight: Radius.circular(11.r)),
                                    child: Image.asset(
                                      'images/appBackground.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Containers(
                                    width: size.width / 4.2,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: size.height,
                                          width: 48,
                                          child: Image.asset(
                                            'images/rpa.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Containers(
                                              height: 26,
                                              color: AppColor.appColor,
                                              child: Center(
                                                child: Texts(
                                                  texts: 'Free',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Containers(
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Texts(
                                    texts: 'Dr. Ram Shrestha',
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                  Texts(
                                    texts: 'The Professional Art Masterclass',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Texts(
                                        texts: 'Visit Website',
                                        fontSize: 14.sp,
                                        color: AppColor.appColor,
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Icon(
                                        Icons.east,
                                        size: 20,
                                        color: AppColor.appColor,
                                      )
                                    ],
                                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
