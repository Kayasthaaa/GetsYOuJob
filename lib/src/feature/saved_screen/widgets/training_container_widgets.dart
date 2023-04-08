import 'package:flutter/material.dart';

import '../../trainings/widgets/training_container.dart';

class TrainingContainerWidgets extends StatelessWidget {
  const TrainingContainerWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const TrainingContainer(
              title: 'UX Training',
              address: 'RPA Nepal, Kupondole,',
              date: '1 week ago',
              applicants: '100 Applicants')
        ],
      ),
    );
  }
}
