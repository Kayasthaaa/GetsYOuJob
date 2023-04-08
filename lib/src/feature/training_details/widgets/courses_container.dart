import 'package:flutter/material.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

import '../../../core/constants/app_spaces.dart';

class CoursesContainer extends StatelessWidget {
  const CoursesContainer(
      {Key? key,
      required this.title,
      required this.course,
      required this.duration,
      required this.type})
      : super(key: key);
  final String title;
  final String course;
  final String duration;
  final String type;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Containers(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
          width: size.width,
          height: 110,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Containers(
                    height: size.height,
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.design_services,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  flex: 5,
                  child: Containers(
                    height: size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(
                          fontSize: size.width * 0.041,
                          texts: title,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                        Texts(
                          fontSize: size.width * 0.047,
                          texts: course,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        Containers(
                          width: size.width,
                          child: Row(
                            children: [
                              Texts(
                                fontSize: size.width * 0.041,
                                fontWeight: FontWeight.w500,
                                texts: duration,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Texts(
                                fontSize: size.width * 0.041,
                                fontWeight: FontWeight.w500,
                                texts: '• ' + type,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
