import 'package:flutter/material.dart';
import '../themes/colors.dart';
import 'app_texts.dart';
import 'containers.dart';

class NavContainer extends StatelessWidget {
  const NavContainer(
      {Key? key, required this.menu1, required this.menu2, this.onTap})
      : super(key: key);
  final String menu1;
  final String menu2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Containers(
      width: size.width,
      child: Column(
        children: [
          Containers(
            onTap: () {
              // context.router.push(const PostComplainsRoute());
            },
            height: 30,
            width: size.width,
            child: Row(
              children: [
                Containers(
                  onTap: () {
                    //  context.router.push(const PostComplainsRoute());
                  },
                  width: 30,
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.deepPurple.shade100,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Center(
                      child: Icon(
                        Icons.edit,
                        size: 27,
                        color: AppColor.appColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Texts(
                  texts: menu1,
                  color: AppColor.appColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Containers(
            onTap: () {
              //context.router.push(const GunasoDetailsRoute());
            },
            height: 30,
            width: size.width,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.deepPurple.shade100,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Center(
                      child: Icon(
                        Icons.remove_red_eye,
                        size: 27,
                        color: AppColor.appColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Texts(
                  texts: menu2,
                  color: AppColor.appColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
