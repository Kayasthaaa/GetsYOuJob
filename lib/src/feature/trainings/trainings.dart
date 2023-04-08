import 'package:flutter/material.dart';
import 'package:gyj/src/app/presentation/k_app_bar.dart';
import 'package:gyj/src/core/routes/app_router.dart';
import 'package:gyj/src/feature/trainings/widgets/training_container.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const kAppBar(title: 'Trainings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TrainingContainer(
                onTap: () {
                  context.router.push(const TrainingDetailsRoute());
                },
                title: 'UX Training',
                address: 'RPA Nepal, Kupondole,',
                date: '1 week ago',
                applicants: '100 Applicants')
          ],
        ),
      ),
    );
  }
}
