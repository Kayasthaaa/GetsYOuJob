import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/feature/saved_screen/widgets/certificate_container.dart';
import 'package:gyj/src/feature/saved_screen/widgets/jobs_container_widget.dart';
import 'package:gyj/src/feature/saved_screen/widgets/training_container_widgets.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const kAppBar(
            backBtn: 'no',
            title: 'Saved',
          ),
          bottom: TabBar(
            labelStyle:
                GoogleFonts.inter(fontSize: 15.sp, fontWeight: FontWeight.w500),
            labelColor: AppColor.appColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              const Tab(
                text: 'Certificates',
              ),
              const Tab(
                text: 'Jobs',
              ),
              const Tab(
                text: 'Trainings',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CertificateContainer(),
            JobsContainer(),
            TrainingContainerWidgets(),
          ],
        ),
      ),
    );
  }
}
