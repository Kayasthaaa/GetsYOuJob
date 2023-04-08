import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chip_tags/flutter_chip_tags.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../basic_information/presentation/screen/widgets/texts.dart';

class PostPortfolioScreenPage extends StatefulWidget {
  const PostPortfolioScreenPage({Key? key}) : super(key: key);

  @override
  _PostPortfolioScreenPageState createState() =>
      _PostPortfolioScreenPageState();
}

class _PostPortfolioScreenPageState extends State<PostPortfolioScreenPage> {
  DateTime? _startDate, _endDate;
  String? imageOne;
  bool _isChecked = false;
  List<String> _myList = ['java', 'html', 'css', 'word', 'design'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Add Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const InfoTexts(texts: 'Title'),
            const Textfields(
              labelText: 'Project Title',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Skills'),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultSpacing,
              ),
              child: ChipTags(
                list: _myList,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                  labelText: 'Skills',
                  hintText: 'Press enter to create tags',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColor.appColor,
                    ),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                createTagOnSubmit: true,
                chipColor: AppColor.appColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Link'),
            const Textfields(
              hintText: 'Paste Link Here',
              labelText: 'Link',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Project Type'),
            const Textfields(
              labelText: 'Type',
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Description'),
            const Textfields(
              maxLines: 9,
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
                    texts: 'Currently Involved',
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const InfoTexts(texts: 'Upload Document'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () async {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 120.9,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final path = (await ImagePicker().pickImage(
                                            source: ImageSource.camera))
                                        ?.path;
                                    if (path != null) {
                                      imageOne = path;

                                      if (mounted) {
                                        setState(() {});
                                      }
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: size.width / 1.5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Texts(
                                            texts: 'Camera',
                                            color: Colors.white,
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          const Icon(Icons.camera)
                                        ]),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final path = (await ImagePicker().pickImage(
                                            source: ImageSource.gallery))
                                        ?.path;
                                    if (path != null) {
                                      imageOne = path;
                                      if (mounted) {
                                        setState(() {});
                                      }
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: size.width / 1.5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Texts(
                                          texts: 'Gallery',
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        const Icon(
                                          Icons.image,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Ink(
                    child: Material(
                      child: imageOne != null
                          ? Image.file(
                              File(imageOne!),
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'images/Upload.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Containers(
              onTap: () {
                context.router.push(const ReferenceScreenRoute());
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
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
