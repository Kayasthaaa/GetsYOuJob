import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/containers.dart';

class AvailabilityScreenPage extends StatefulWidget {
  const AvailabilityScreenPage({Key? key}) : super(key: key);

  @override
  _AvailabilityScreenPageState createState() => _AvailabilityScreenPageState();
}

class _AvailabilityScreenPageState extends State<AvailabilityScreenPage> {
  String radioButtonItem = 'ONE';
  int? id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Availability'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Containers(
                      height: 55,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 1),
                              blurRadius: 9.9,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                          color: radioButtonItem == 'Full Time'
                              ? AppColor.appColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: radioButtonItem == 'Full Time'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            value: 1,
                            groupValue: id,
                            onChanged: (val) {
                              setState(
                                () {
                                  radioButtonItem = 'Full Time';
                                  id = 1;
                                  print(radioButtonItem);
                                },
                              );
                            },
                          ),
                          Texts(
                            texts: 'Full Time',
                            fontSize: 16.sp,
                            color: radioButtonItem == 'Full Time'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Containers(
                      height: 55,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 9.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                        color: radioButtonItem == 'Part Time'
                            ? AppColor.appColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: radioButtonItem == 'Part Time'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            value: 2,
                            groupValue: id,
                            onChanged: (val) {
                              setState(
                                () {
                                  radioButtonItem = 'Part Time';
                                  id = 2;
                                  print(radioButtonItem);
                                },
                              );
                            },
                          ),
                          Texts(
                            texts: 'Part Time',
                            fontSize: 16.sp,
                            color: radioButtonItem == 'Part Time'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
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
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Containers(
                      height: 55,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 9.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                        color: radioButtonItem == 'Internship'
                            ? AppColor.appColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: radioButtonItem == 'Internship'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            value: 3,
                            groupValue: id,
                            onChanged: (val) {
                              setState(
                                () {
                                  radioButtonItem = 'Internship';
                                  id = 3;
                                  print(radioButtonItem);
                                },
                              );
                            },
                          ),
                          Texts(
                            texts: 'Internship',
                            fontSize: 16.sp,
                            color: radioButtonItem == 'Internship'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Containers(
                      height: 55,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 9.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                        color: radioButtonItem == 'Contract'
                            ? AppColor.appColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: radioButtonItem == 'Contract'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            value: 4,
                            groupValue: id,
                            onChanged: (val) {
                              setState(
                                () {
                                  radioButtonItem = 'Contract';
                                  id = 4;
                                  print(radioButtonItem);
                                },
                              );
                            },
                          ),
                          Texts(
                            texts: 'Contract',
                            fontSize: 16.sp,
                            color: radioButtonItem == 'Contract'
                                ? AppColor.whiteColor
                                : Colors.grey.shade800,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
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
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Containers(
                    width: size.width / 2.4,
                    height: 55,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 9.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                        color: radioButtonItem == 'Freelance'
                            ? AppColor.appColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: radioButtonItem == 'Freelance'
                              ? AppColor.whiteColor
                              : Colors.grey.shade800,
                          value: 5,
                          groupValue: id,
                          onChanged: (val) {
                            setState(
                              () {
                                radioButtonItem = 'Freelance';
                                id = 5;
                                print(radioButtonItem);
                              },
                            );
                          },
                        ),
                        Texts(
                          texts: 'Freelance',
                          fontSize: 16.sp,
                          color: radioButtonItem == 'Freelance'
                              ? AppColor.whiteColor
                              : Colors.grey.shade800,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.grey.shade100,
        height: 130,
        child: Containers(
          onTap: () {
            context.router.push(const ExperienceScreenRoute());
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
                height: 51,
                onTap: () {
                  context.router.push(const ExperienceScreenRoute());
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
      ),
    );
  }
}
