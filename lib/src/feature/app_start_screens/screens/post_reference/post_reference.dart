import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import '../../../../core/constants/app_spaces.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/containers.dart';
import '../basic_information/presentation/screen/widgets/texts.dart';

class PostReferrenceScreenPage extends StatefulWidget {
  const PostReferrenceScreenPage({Key? key}) : super(key: key);

  @override
  _PostReferrenceScreenPageState createState() =>
      _PostReferrenceScreenPageState();
}

class _PostReferrenceScreenPageState extends State<PostReferrenceScreenPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Add References'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Reference Name'),
            const Textfields(
              labelText: 'Reference Name',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Designation'),
            const Textfields(
              labelText: 'Designation',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Company Type'),
            const Textfields(
              hintText: 'Select',
              labelText: 'Company Type',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Company Name'),
            const Textfields(
              hintText: 'Select',
              labelText: 'Company Name',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Email'),
            const Textfields(
              labelText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Phone Number'),
            const Textfields(
              labelText: 'Phone Number',
            ),
            const SizedBox(
              height: 40,
            ),
            Containers(
              onTap: () {
                // context.router.push(const PortfolioScreenRoute());
              },
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              width: size.width,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.appColor,
              ),
              child: Center(
                child: Texts(
                  texts: 'Save',
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
