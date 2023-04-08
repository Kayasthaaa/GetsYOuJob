// ignore_for_file: prefer_single_quotes, unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gyj/src/core/extensions/snackbar.dart';
import 'package:gyj/src/core/routes/app_router.gr.dart';
import '../../../../core/constants/validations.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/containers.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../../../../core/widgets/textfields.dart';
import '../cubit/register/register_cubit.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  bool hidePassword2 = true;
  String? name, email, phone, password, password_confirmation;
  final TextEditingController _pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => const Containers(),
              success: (response) {
                context.showSnackbarSuccess(
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  icon: Icons.verified,
                  message: response.message.toString(),
                );
                context.router.replace(const SelectTitleRoute());
              },
              error: (response) => context.showSnackbarError(message: response),
              loading: () {
                const Center(
                    child: SpinKitSpinningLines(color: AppColor.appColor));
              },
              noInternet: () {
                context.showSnackbarError(message: 'No Internet Connection');
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
                    height: 65,
                  ),
                  Containers(
                    width: size.width,
                    height: 115,
                    child: Image.asset("images/appLogo.png"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Containers(
                    width: size.width,
                    child: Column(
                      children: [
                        Containers(
                          width: size.width,
                          child: Texts(
                            texts: 'Sign Up',
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appColor,
                          ),
                        ),
                        Containers(
                          width: size.width,
                          child: Texts(
                            texts:
                                'Let’s get started. Fill the details below to \ncontinue.',
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
                    inputType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.mail),
                    validator: validateFields,
                    hintText: "Email Address ",
                    onChanged: (String value) {
                      email = value;
                    },
                    onSaved: (input) => email = input,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomField(
                    validator: validateFields,
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Username ",
                    //icon: Icons.mail,
                    onChanged: (String value) {
                      name = value;
                    },
                    onSaved: (input) => name = input,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomField(
                    prefixIcon: const Icon(Icons.lock),
                    validator: validatePassword,
                    hintText: "Password",
                    controller: _pass,
                    onSuffixPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    onChanged: (String value) {
                      password = value;
                    },
                    onSaved: (input) => password = input,
                    obscureText: hidePassword,
                    iconSuffix: hidePassword
                        ? Icons.visibility_off_sharp
                        : Icons.visibility,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomField(
                    prefixIcon: const Icon(Icons.lock),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'required';
                      } else if (value.length < 6) {
                        return 'Minimum Length Should be 6';
                      } else if (value != _pass.text) {
                        return 'The password confirmation does not match.';
                      }
                      return null;
                    },
                    hintText: "Confirm Password",
                    onSuffixPressed: () {
                      setState(() {
                        hidePassword2 = !hidePassword2;
                      });
                    },
                    onChanged: (String value) {
                      password_confirmation = value;
                    },
                    onSaved: (input) => password_confirmation = input,
                    obscureText: hidePassword2,
                    iconSuffix: hidePassword2
                        ? Icons.visibility_off_sharp
                        : Icons.visibility,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<RegisterCubit, RegisterState>(
                    builder: (context, state) {
                      return CustomButton(
                        title: 'Sign Up',
                        isDisabled: false,
                        loading: state.maybeWhen(
                            orElse: () => false, loading: () => true),
                        onPressed: () async {
                          final isValid = _formKey.currentState?.validate();
                          if (!isValid!) {
                            return;
                          } else {
                            context.read<RegisterCubit>().register(
                                  email: email.toString(),
                                  username: name.toString(),
                                  password: password.toString(),
                                  role: 'user',
                                );
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Containers(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Texts(
                          texts: "Already have an account?",
                          color: Colors.grey.shade400,
                          fontSize: 14.sp,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Texts(
                          onTap: () {
                            context.router.pop();
                          },
                          texts: "Sign In",
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
                  const SizedBox(
                    height: 25,
                  ),
                  Containers(
                    width: size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Texts(
                          texts: "© Intopros Technologies",
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
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
