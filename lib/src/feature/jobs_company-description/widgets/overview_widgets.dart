// ignore_for_file: unused_local_variable, prefer_single_quotes

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_spaces.dart';
import '../../../core/themes/colors.dart';
import '../../../core/widgets/app_texts.dart';
import '../../../core/widgets/containers.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Containers(
            margin: const EdgeInsets.only(left: 12, right: kDefaultSpacing),
            height: 155,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color.fromRGBO(4, 120, 87, 0.1)),
                    width: 145,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: AppColor.appColor,
                            size: 40,
                          ),
                          const Texts(
                            texts: 'Founded',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          const Texts(
                            texts: '2017',
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color.fromRGBO(4, 120, 87, 0.1)),
                    width: 145,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.people_sharp,
                            color: AppColor.appColor,
                            size: 40,
                          ),
                          const Texts(
                            texts: 'Size',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          const Texts(
                            texts: '205 +',
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color.fromRGBO(4, 120, 87, 0.1)),
                    width: 145,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.location_city,
                            color: AppColor.appColor,
                            size: 40,
                          ),
                          const Texts(
                            texts: 'Address',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          const Texts(
                            texts: 'Kupondole',
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Containers(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            width: size.width,
            child: Texts(
              texts: 'About Company',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 15.sp,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Containers(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            child: Texts(
                textAlign: TextAlign.justify,
                color: Colors.grey.shade700,
                texts:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing . Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when "),
          ),
          const SizedBox(
            height: 20,
          ),
          Containers(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            width: size.width,
            child: Texts(
              texts: 'About Company',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 15.sp,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Containers(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            width: size.width,
            height: 105,
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 10, 15),
              child: Row(
                children: [
                  Expanded(
                    child: Containers(
                      height: size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(
                            texts: '28 Successful Projects',
                            fontSize: 15.sp,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.verified,
                                color: AppColor.appColor,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Texts(
                                texts: 'Verified',
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
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
                            texts: '20+ Employees',
                            fontSize: 15.sp,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.verified,
                                color: AppColor.appColor,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Texts(
                                texts: 'Verified',
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
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
            child: Texts(
              texts: 'Reviews',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 15.sp,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Containers(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            width: size.width,
            height: 195,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBarIndicator(
                  rating: 3.41,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 50.0,
                  direction: Axis.horizontal,
                ),
                Texts(
                  texts: '3.19',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
                Texts(
                  texts: 'out of 48 reviews',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w300,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          )
        ],
      ),
    );
  }
}
