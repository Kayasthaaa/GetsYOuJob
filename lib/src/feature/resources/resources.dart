import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/constants/app_spaces.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';

class ResourcesScreenPage extends StatelessWidget {
  const ResourcesScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Resources'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Containers(
              onTap: () {
                context.router.push(const ResourcesDetailsRoute());
              },
              width: size.width,
              height: 170,
              child: Row(
                children: [
                  Expanded(
                    child: Containers(
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: const Color.fromARGB(255, 252, 216, 222),
                      ),
                      child: Containers(
                        margin: const EdgeInsets.all(25),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Containers(
                              width: 49,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.pink.shade600,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.cell_wifi,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Texts(
                              texts: 'Product Design',
                              fontWeight: FontWeight.w500,
                              fontSize: size.width * 0.042,
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                            Texts(
                              texts: '24 Resources',
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.036,
                              color: Colors.grey,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Containers(
                      height: size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: const Color.fromRGBO(254, 209, 50, 0.1),
                      ),
                      child: Containers(
                        margin: const EdgeInsets.all(25),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Containers(
                              width: 49,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.yellow.shade700,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.heart_broken_outlined,
                                  size: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Texts(
                              texts: 'Figma Design',
                              fontWeight: FontWeight.w500,
                              fontSize: size.width * 0.042,
                              color: Colors.black,
                              textAlign: TextAlign.center,
                            ),
                            Texts(
                              texts: '24 Resources',
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.036,
                              color: Colors.grey,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
