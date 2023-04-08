import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gyj/src/core/extensions/num_extensions.dart';
import 'package:gyj/src/core/themes/colors.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';

import '../../core/routes/app_router.dart';
import '../../core/widgets/containers.dart';
import '../cubit/app_cubit.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              context.read<AppCubit>().checkAuthState();
              return buildBody();
            },
            unAuthenticated: (message) {
              2.delayedSeconds.then(
                (value) {
                  context.router.replace(
                    const LoginRoute(),
                  );
                },
              );
              return buildBody();
            },
            authenticated: () {
              2.delayedSeconds.then(
                (value) {
                  context.router.replace(
                    const BasicInformationRoute(),
                  );
                },
              );

              return buildBody();
            },
          );
        },
      ),
    );
  }
}

Widget buildBody() {
  return Scaffold(
    backgroundColor: AppColor.appColor,
    body: Containers(
      child: Stack(
        children: [
          Center(
            child: Container(
              child: Image.asset('images/splashLogo.png'),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 28.0),
              child: Texts(
                texts: '© Intopros Technologies',
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
