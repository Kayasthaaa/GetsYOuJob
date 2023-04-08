import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';

import '../../../core/widgets/containers.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar(
      {Key? key,
      required this.title,
      this.backBtn = 'yes',
      this.onTap,
      this.textAlign,
      this.profileTap,
      this.visible = 'yes'})
      : super(key: key);
  final String title;
  final TextAlign? textAlign;
  final String backBtn;
  final void Function()? onTap;
  final void Function()? profileTap;
  final String visible;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Containers(
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Visibility(
                  visible: backBtn == 'yes' ? true : false,
                  child: Containers(
                    onTap: () {
                      context.router.pop();
                    },
                    width: 40,
                    height: 35,
                    child: const Icon(
                      Icons.west,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Texts(
                    texts: title,
                    fontSize: 20.sp,
                    color: Colors.black,
                    textAlign: textAlign,
                    fontWeight: FontWeight.w500,
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
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
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
                      texts: 'Prajesh Kayastha',
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    Texts(
                      texts: 'Flutter Developer',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Visibility(
                    visible: visible == 'yes' ? true : false,
                    child: Containers(
                      onTap: profileTap,
                      width: 125,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green.shade100,
                      ),
                      child: Center(
                        child: Texts(
                          texts: 'Edit Profile',
                          color: const Color.fromARGB(255, 2, 134, 97),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
