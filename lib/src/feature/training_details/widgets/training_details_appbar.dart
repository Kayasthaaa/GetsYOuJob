import 'package:flutter/material.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import '../../../core/widgets/app_texts.dart';
import '../../../core/widgets/containers.dart';

class TrainingDetailsAppBar extends StatelessWidget {
  const TrainingDetailsAppBar(
      {Key? key, required this.title, required this.semiTitle})
      : super(key: key);
  final String title;
  final String semiTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Containers(
            height: 30,
            width: size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: const Icon(
                    Icons.west,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Containers(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.deepPurple.shade200,
                  ),
                  Containers(
                    child: Column(
                      children: [
                        Texts(
                          texts: title,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: size.width * 0.04,
                        ),
                        Texts(
                          texts: semiTitle,
                          color: Colors.white60,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * 0.036,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
