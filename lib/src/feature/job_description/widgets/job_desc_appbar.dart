import 'package:flutter/material.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import '../../../core/widgets/app_texts.dart';
import '../../../core/widgets/containers.dart';

class JobDetailsAppBar extends StatelessWidget {
  const JobDetailsAppBar(
      {Key? key, required this.title, required this.semiTitle})
      : super(key: key);
  final String title;
  final String semiTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Containers(
            width: size.width,
            height: 30,
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
                  const SizedBox(
                    height: 10,
                  ),
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
          ),
          Containers(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 36),
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Containers(
                    height: 27,
                    child: const Center(
                      child: Texts(
                        texts: 'Design',
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Containers(
                    height: 27,
                    child: const Center(
                      child: Texts(
                        texts: 'Urgent',
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Containers(
                    height: 27,
                    child: const Center(
                      child: Texts(
                        texts: 'Full-Time',
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
