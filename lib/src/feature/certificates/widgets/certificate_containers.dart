import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class CertificateContainers extends StatelessWidget {
  const CertificateContainers(
      {Key? key,
      required this.title,
      required this.semiTitle,
      required this.desc})
      : super(key: key);
  final String title;
  final String semiTitle;
  final String desc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      onTap: () {
        context.router.push(
          const CertificateDetailsRoute(),
        );
      },
      width: size.width,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Containers(
              width: size.width,
              height: 75,
              child: Row(
                children: [
                  Containers(
                    width: 55,
                    height: size.height,
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 28.0),
                      child: Icon(
                        Icons.extension,
                        size: 40,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Containers(
                      height: size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(
                            texts: title,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Texts(
                            texts: semiTitle,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SizedBox(
                        height: 30,
                        width: 22,
                        child: Image.asset(
                          'images/bookmark.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Containers(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: size.width,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Containers(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                width: size.width,
                child: Texts(
                  texts: desc,
                  textAlign: TextAlign.justify,
                  fontSize: size.width * 0.033,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
