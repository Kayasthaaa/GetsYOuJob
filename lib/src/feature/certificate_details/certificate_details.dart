// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/feature/certificate_details/widgets/widgets.dart';
import '../../core/themes/colors.dart';
import '../training_details/widgets/training_details_appbar.dart';

class CertificateDetailsPage extends StatelessWidget {
  const CertificateDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: 'Foundation of UX',
          semiTitle: 'Google',
        ),
      ),
      body: const DetailsContainer(
        desc:
            'Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur. elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, ',
      ),
    );
  }
}
