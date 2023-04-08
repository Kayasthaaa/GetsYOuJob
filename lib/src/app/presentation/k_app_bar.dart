import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/app_texts.dart';
import '../../core/widgets/containers.dart';

class kAppBar extends StatelessWidget {
  const kAppBar(
      {Key? key, required this.title, this.onTap, this.backBtn = 'yes'})
      : super(key: key);
  final String title;
  final String backBtn;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Visibility(
            visible: backBtn == 'yes' ? true : false,
            child: GestureDetector(
              onTap: () {
                context.router.pop();
              },
              child: Containers(
                height: size.height,
                child: const Icon(
                  Icons.west,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Containers(
                child: Texts(
                  texts: title,
                  fontSize: 20.sp,
                  color: Colors.black,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
