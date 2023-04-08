import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class TrainingContainer extends StatelessWidget {
  const TrainingContainer(
      {Key? key,
      required this.title,
      required this.address,
      required this.date,
      required this.applicants,
      this.onTap})
      : super(key: key);
  final String title;
  final String address;
  final String date;
  final String applicants;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      onTap: onTap,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      width: size.width,
      height: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8,
            spreadRadius: 8,
            color: Colors.black.withOpacity(0.05),
          )
        ],
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          children: [
            Containers(
              margin: const EdgeInsets.fromLTRB(9, 9, 1, 9),
              height: size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.r),
                color: const Color.fromRGBO(248, 250, 252, 1),
              ),
              width: 100,
              child: Image.asset(
                'images/appLogo.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Containers(
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                        texts: title,
                        fontSize: size.width * 0.047,
                        fontWeight: FontWeight.w500,
                      ),
                      Texts(
                        texts: address,
                        fontSize: size.width * 0.045,
                        color: Colors.grey,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Containers(
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              texts: date,
                              color: Colors.grey,
                              fontSize: size.width * 0.04,
                            ),
                            Texts(
                              overflow: TextOverflow.ellipsis,
                              texts: applicants,
                              color: Colors.green,
                              fontSize: size.width * 0.04,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8),
              child: Containers(
                height: size.height,
                width: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset(
                        'images/bookmark.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
