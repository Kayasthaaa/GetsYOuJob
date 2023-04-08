import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/di/injection.dart';
import '../../core/routes/app_router.dart';
import '../../core/themes/colors.dart';
import '../../feature/authentications/presentations/cubit/login/login_cubit.dart';
import '../../feature/authentications/presentations/cubit/register/register_cubit.dart';
import '../cubit/app_cubit.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final router = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => AnnotatedRegion(
        value: SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AppCubit>(),
              lazy: false,
            ),
            BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
            ),
          ],
          child: MaterialApp.router(
            theme: ThemeData(
              primarySwatch: Colors.green,
              primaryColor: AppColor.appColor,
              appBarTheme: AppBarTheme(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.grey.shade50,
              ),
            ),
            routerDelegate: router.delegate(),
            debugShowCheckedModeBanner: false,
            routeInformationParser: router.defaultRouteParser(),
            title: 'Nagarpalika',
          ),
        ),
      ),
    );
  }
}
