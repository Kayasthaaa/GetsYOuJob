import 'package:flutter/material.dart';
import 'package:flutter_chip_tags/flutter_chip_tags.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';

import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/containers.dart';

class SkillsScreenPage extends StatefulWidget {
  const SkillsScreenPage({Key? key}) : super(key: key);

  @override
  State<SkillsScreenPage> createState() => _SkillsScreenPageState();
}

class _SkillsScreenPageState extends State<SkillsScreenPage> {
  List<String> _myList = ['java', 'html', 'css', 'word'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Skills'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            ChipTags(
              list: _myList,
              createTagOnSubmit: true,
              chipColor: AppColor.appColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 130,
        child: Containers(
          onTap: () {
            context.router.push(const AvailabilityScreenRoute());
            //    print(_myList);
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
                  context.router.push(const AvailabilityScreenRoute());
                  //    print(_myList);
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
