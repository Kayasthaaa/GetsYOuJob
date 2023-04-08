import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import 'package:gyj/src/core/widgets/textfields.dart';
import 'package:gyj/src/feature/app_start_screens/screens/basic_information/presentation/screen/widgets/radio_btns.dart';
import 'package:gyj/src/feature/app_start_screens/screens/basic_information/presentation/screen/widgets/texts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/widgets/app_texts.dart';
import '../../../../widgets/start_screen_app_bar.dart';

class BasicInformationPage extends StatefulWidget {
  const BasicInformationPage({Key? key}) : super(key: key);

  @override
  _BasicInformationPageState createState() => _BasicInformationPageState();
}

class _BasicInformationPageState extends State<BasicInformationPage> {
  String? imageOne;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const basicAppBar(
          backBtn: 'yes',
          title: 'Basic Information',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const InfoTexts(texts: 'First Name'),
            const Textfields(
              autofocus: true,
              labelText: 'First Name',
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Middle Name  (Optional)'),
            const Textfields(
              labelText: 'Middle Name',
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Last Name'),
            const Textfields(
              labelText: 'Last Name',
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Email'),
            const Textfields(
              labelText: 'Email',
              prefixIcon: Icon(Icons.mail),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Phone Number'),
            const Textfields(
              labelText: 'Phone Number',
              prefixIcon: Icon(Icons.phone),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Address'),
            const Textfields(
              labelText: 'Address',
              prefixIcon: Icon(Icons.location_on),
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Gender'),
            const RadioBtn(),
            const SizedBox(
              height: 20,
            ),
            const InfoTexts(texts: 'Upload Profile Picture'),
            const SizedBox(
              height: 5,
            ),
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
                              height: 155,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              'images/Upload.png',
                              width: size.width,
                              fit: BoxFit.fill,
                              height: 155,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Containers(
              onTap: () {
                context.router.push(const AboutScreenRoute());
              },
              margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
              height: 45,
              width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Containers(
                    onTap: () {
                      context.router.push(const AboutScreenRoute());
                    },
                    width: 155,
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
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
