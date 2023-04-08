import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/containers.dart';

import '../../../core/themes/colors.dart';
import '../../../core/widgets/app_texts.dart';

class JobDetailsContainer extends StatelessWidget {
  const JobDetailsContainer(
      {Key? key, required this.desc, required this.requirements})
      : super(key: key);
  final String desc;
  final String requirements;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Containers(
          width: size.width,
          height: 70,
          child: Column(
            children: [
              Texts(
                texts: 'About',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.appColor,
              ),
              const SizedBox(
                height: 7,
              ),
              Containers(
                height: 10,
                width: size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Containers(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                        height: 2,
                      ),
                    ),
                    Containers(
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.appColor,
                      ),
                      height: 2.4,
                    ),
                    Expanded(
                      child: Containers(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                        height: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          child: Texts(
            texts: 'Overview',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Texts(
            textAlign: TextAlign.justify,
            fontSize: 15.sp,
            color: Colors.grey.shade700,
            texts: desc),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: size.width,
          child: Texts(
            texts: 'Requirements',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Texts(
            textAlign: TextAlign.justify,
            fontSize: 15.sp,
            color: Colors.grey.shade700,
            texts: requirements),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: size.width,
          child: Texts(
            texts: 'Skills',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Containers(
            width: size.width / 1.5,
            height: 25,
            child: Row(
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
                        fontSize: 12.sp,
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
                        fontSize: 12.sp,
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
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
