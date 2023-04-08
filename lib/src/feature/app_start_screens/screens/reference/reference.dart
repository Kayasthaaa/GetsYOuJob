import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class ReferenceScreenPage extends StatelessWidget {
  const ReferenceScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Reference'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: 190,
            ),
            Containers(
              width: MediaQuery.of(context).size.width,
              height: 210,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset('images/background.png'),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: IconButton(
                        onPressed: () {
                          context.router.push(
                            const PostReferrenceScreenRoute(),
                          );
                        },
                        icon: const Icon(
                          Icons.add_circle,
                          color: AppColor.appColor,
                          size: 55,
                        )),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 98.0, left: 20),
                      child: Texts(
                        texts: 'Add Reference',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Containers(
        onTap: () {
          context.router.push(const BottomNavigationRoute());
        },
        margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        width: size.width,
        height: 130,
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
          ],
        ),
      ),
    );
  }
}
