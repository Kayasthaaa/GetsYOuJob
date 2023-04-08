// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/feature/training_details/widgets/courses_container.dart';
import 'package:gyj/src/feature/training_details/widgets/training_details_appbar.dart';

import '../../core/routes/app_router.dart';
import '../../core/widgets/app_texts.dart';

class TrainingDetailsPage extends StatefulWidget {
  const TrainingDetailsPage({Key? key}) : super(key: key);

  @override
  State<TrainingDetailsPage> createState() => _TrainingDetailsPageState();
}

class _TrainingDetailsPageState extends State<TrainingDetailsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 260,
        backgroundColor: AppColor.appColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(6.r),
          ),
        ),
        flexibleSpace: const TrainingDetailsAppBar(
          title: 'User Experience Training',
          semiTitle: 'RPA Nepal, Kupondole',
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 55),
            child: TabBar(
              splashFactory: NoSplash.splashFactory,
              controller: tabController,
              labelStyle: GoogleFonts.inter(
                  fontSize: 15.sp, fontWeight: FontWeight.w500),
              labelColor: AppColor.appColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                const Tab(
                  text: 'About',
                ),
                const Tab(
                  text: 'Courses',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: kDefaultSpacing),
                          child: Texts(
                              textAlign: TextAlign.justify,
                              fontSize: 13.sp,
                              color: Colors.grey.shade700,
                              texts:
                                  'RPA Academy RPA Academy conductsRPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew.  IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew.  conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. RPA Academy conducts IT and Networking training classes led by industry experts. Join RPA Academy classes to build up your career and also get an opportunity to be a part of our crew. '),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Containers(
                          margin: const EdgeInsets.symmetric(
                              horizontal: kDefaultSpacing),
                          width: size.width,
                          height: 51,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: AppColor.appColor),
                          child: const Center(
                            child: Texts(
                              texts: 'Visit Now',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const CoursesContainer(
                          title: 'Level 1',
                          course: 'Graphics Designing',
                          duration: '7 Weeks',
                          type: 'Hybrid'),
                      const SizedBox(
                        height: 7,
                      ),
                      const CoursesContainer(
                          title: 'Advanced',
                          course: 'Machine Learning',
                          duration: '7 Weeks',
                          type: 'Hybrid'),
                      const SizedBox(
                        height: 65,
                      ),
                      Containers(
                        onTap: () {
                          context.router.push(
                            const CertificateRoute(),
                          );
                        },
                        margin: const EdgeInsets.symmetric(
                            horizontal: kDefaultSpacing),
                        width: size.width,
                        height: 51,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColor.appColor),
                        child: const Center(
                          child: Texts(
                            texts: 'Visit Now',
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
