import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import 'package:intl/intl.dart';

import '../basic_information/presentation/screen/widgets/texts.dart';

class PostEducationScreenPage extends StatefulWidget {
  const PostEducationScreenPage({Key? key}) : super(key: key);

  @override
  _PostEducationScreenPageState createState() =>
      _PostEducationScreenPageState();
}

class _PostEducationScreenPageState extends State<PostEducationScreenPage> {
  DateTime? _startDate, _endDate;
  bool _isChecked = false;
  // final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Add Education'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Educational Institution'),
            const Textfields(
              labelText: 'Educational Institution',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Course Type'),
            const Textfields(
              labelText: 'Course Type',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Course'),
            const Textfields(
              hintText: 'Select Course',
              labelText: 'Course',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Description'),
            const Textfields(
              maxLines: 9,
              hintText: 'Course Details',
              labelText: 'Description',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Started Date'),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Texts(
                      texts: _startDate == null
                          ? 'mm/dd/yy'
                          : DateFormat('yMd').format(_startDate!),
                      fontSize: 14.sp,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1901),
                              lastDate: DateTime(2222))
                          .then(
                        (date) {
                          setState(
                            () {
                              _startDate = date;
                            },
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.calendar_month,
                      color: AppColor.appColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'End Date'),
            Stack(
              children: [
                Visibility(
                  visible: _isChecked == false ? true : false,
                  child: Containers(
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Texts(
                            texts: _endDate == null
                                ? 'mm/dd/yy'
                                : DateFormat('yMd').format(_endDate!),
                            fontSize: 14.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1901),
                                    lastDate: DateTime(2222))
                                .then(
                              (date) {
                                setState(
                                  () {
                                    _endDate = date;
                                  },
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.calendar_month,
                            color: AppColor.appColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isChecked == true ? true : false,
                  child: Containers(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13.0, left: 12),
                      child: Texts(
                        texts: 'Present',
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                        print(_isChecked);
                      });
                    },
                    activeColor: AppColor.appColor,
                    value: _isChecked,
                  ),
                  Texts(
                    texts: 'Currently Studying',
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Containers(
              onTap: () {
                context.router.push(const PortfolioScreenRoute());
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
