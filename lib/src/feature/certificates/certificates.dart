// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/feature/certificates/widgets/certificate_containers.dart';

class CertificatePage extends StatelessWidget {
  const CertificatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Certificate'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const CertificateContainers(
                title: 'Foundation of UX',
                semiTitle: 'Google',
                desc:
                    'Lorem ipsum dolor sit amet, consectetur and her a adipiscing elit dolor sit amet, consectetur and her a adipiscing elit. dolor sit amet, consectetur.')
          ],
        ),
      ),
    );
  }
}
