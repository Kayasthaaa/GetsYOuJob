import 'package:flutter/material.dart';

import 'app_texts.dart';
import 'containers.dart';

class rAppBar extends StatelessWidget {
  const rAppBar({Key? key, required this.title, this.onTap}) : super(key: key);
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Containers(
          onTap: onTap,
          child: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Containers(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Texts(
                texts: title,
                textAlign: TextAlign.center,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
