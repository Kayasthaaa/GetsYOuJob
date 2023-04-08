import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';

import '../../core/constants/app_spaces.dart';
import '../../core/widgets/app_texts.dart';
import '../../core/widgets/containers.dart';

class JobsScreenPage extends StatelessWidget {
  const JobsScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            const kAppBar(
              title: 'All Jobs',
              backBtn: 'yes',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              onTap: () {
                context.router.push(const JobDescriptionRoute());
              },
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 330,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 7,
                    spreadRadius: 9,
                    color: Colors.black.withOpacity(0.07),
                  )
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
