import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';

import '../../../core/widgets/containers.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Containers(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple.shade100,
            radius: 35,
            child: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Texts(
                texts: 'P',
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts(
                  texts: 'Greetings,',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
                Texts(
                  texts: 'Prajesh Kayastha',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Containers(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.green.shade50,
            ),
            height: 34,
            width: 38,
            child: Image.asset(
              'images/userNotification.png',
              //fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
