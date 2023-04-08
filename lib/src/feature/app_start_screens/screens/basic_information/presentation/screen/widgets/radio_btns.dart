// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/containers.dart';

import '../../../../../../../core/widgets/app_texts.dart';

class RadioBtn extends StatefulWidget {
  const RadioBtn({Key? key}) : super(key: key);

  @override
  _RadioBtnState createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  String radioButtonItem = 'ONE';
  int id = 3;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Radio(
            activeColor: AppColor.appColor,
            value: 1,
            groupValue: id,
            onChanged: (val) {
              setState(
                () {
                  radioButtonItem = 'Male';
                  id = 1;
                  print(radioButtonItem);
                },
              );
            },
          ),
          Texts(
            texts: 'Male',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          Radio(
            activeColor: AppColor.appColor,
            value: 2,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'Female';
                id = 2;
                print(radioButtonItem);
              });
            },
          ),
          Texts(
            texts: 'Female',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          Radio(
            activeColor: AppColor.appColor,
            value: 3,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'Others';
                id = 3;
                print(radioButtonItem);
              });
            },
          ),
          Texts(
            texts: 'Others',
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
