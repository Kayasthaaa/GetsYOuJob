// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/feature/jobs_company-description/widgets/open_positions_container.dart';
import 'package:gyj/src/feature/jobs_company-description/widgets/overview_widgets.dart';
import 'package:gyj/src/feature/training_details/widgets/training_details_appbar.dart';

class JobsCompanyDetailsPage extends StatefulWidget {
  const JobsCompanyDetailsPage({Key? key}) : super(key: key);

  @override
  State<JobsCompanyDetailsPage> createState() => _JobsCompanyDetailsPageState();
}

class _JobsCompanyDetailsPageState extends State<JobsCompanyDetailsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 220,
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
                  text: 'Overview',
                ),
                const Tab(
                  text: 'Open Positions',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: OverviewContainer(),
                ),
                const OpenPositionsContainer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
