// ignore_for_file: prefer_single_quotes, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gyj/src/core/constants/validations.dart';
import 'package:gyj/src/core/extensions/snackbar.dart';
import 'package:gyj/src/core/widgets/app_texts.dart';
import 'package:gyj/src/core/widgets/containers.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../cubit/login/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  String? password, username;
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => const Containers(),
              success: (message, user) {
                context.router.replace(const BottomNavigationRoute());
              },
              error: (error) => context.showSnackbarError(message: error),
              noInternet: () {
                context.showSnackbarError(message: 'No Internet Connection');
              },
              loading: () {
                const Center(
                    child: SpinKitSpinningLines(color: AppColor.appColor));
              },
            );
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  Containers(
                    width: size.width,
                    height: 115,
                    child: Image.asset('images/appLogo.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Containers(
                    width: size.width,
                    child: Column(
                      children: [
                        Containers(
                          width: size.width,
                          child: Texts(
                            texts: 'Sign In',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appColor,
                          ),
                        ),
                        Containers(
                          width: size.width,
                          child: Texts(
                            texts:
                                'Welcome back, Please login into your account.',
                            fontSize: 14.sp,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomField(
                    validator: validateFields,
                    onChanged: (String value) {
                      username = value;
                    },
                    onSaved: (input) => username = input,
                    inputType: TextInputType.emailAddress,
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  CustomField(
                    validator: validatePassword,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    onChanged: (String value) {
                      password = value;
                    },
                    onSaved: (input) => password = input,
                    onSuffixPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    obscureText: hidePassword,
                    iconSuffix: hidePassword
                        ? Icons.visibility_off_sharp
                        : Icons.visibility,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Containers(
                    onTap: () {
                      //  context.router.push(const SendResetCodeRoute());
                    },
                    width: size.width,
                    child: Texts(
                      texts: "Forgot Password?",
                      textAlign: TextAlign.end,
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return CustomButton(
                        title: 'Sign In ',
                        isDisabled: false,
                        loading: state.maybeWhen(
                            orElse: () => false, loading: () => true),
                        onPressed: () async {
                          final isValid = _formKey.currentState?.validate();
                          if (!isValid!) {
                            return;
                          } else {
                            context.read<LoginCubit>().login(
                                  username: username.toString(),
                                  password: password.toString(),
                                );
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Containers(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Texts(
                          texts: "Do not have an account?",
                          color: Colors.grey.shade400,
                          fontSize: 14.sp,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Texts(
                          onTap: () {
                            context.router.push(
                              const RegisterRoute(),
                            );
                          },
                          texts: "Sign Up",
                          color: AppColor.appColor,
                          fontSize: 15.sp,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Texts(
                    texts: '© Intopros Technologies',
                    color: Colors.grey,
                    fontSize: 12.sp,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
