import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';

import '../../../core/statefull/login_button.dart';
import '../../../core/statefull/social_auth.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.r),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: w * 0.6,
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'name'.tr(),
                    textEditingController: userNameController,
                    prefix: const Icon(Icons.person),
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'email'.tr(),
                    textEditingController: emailController,
                    prefix: const Icon(Icons.email),
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'phone'.tr(),
                    textEditingController: phoneController,
                    prefix: const Icon(Icons.phone),
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'password'.tr(),
                    textEditingController: passwordController,
                    suffix: const Icon(Icons.visibility),
                    prefix: const Icon(Icons.lock),
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'password_confirmtion'.tr(),
                    textEditingController: passwordConfirmController,
                    suffix: const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                    prefix: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  Gap(30.h),
                  CustomLoginButton(
                    text: 'register'.tr(),
                  ),
                  Gap(30.h),
                  Row(
                    children: [
                      // Left line
                      const Expanded(
                        child: Divider(
                          color: Colors.white, // Color of the line
                          thickness: 1, // Thickness of the line
                          endIndent: 8, // Spacing before the text
                        ),
                      ),
                      // Text in the middle
                      Text(
                        'register_through'.tr(), // Arabic text
                        style: const TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 16, // Text size
                        ),
                      ),
                      // Right line
                      const Expanded(
                        child: Divider(
                          color: Colors.white, // Color of the line
                          thickness: 1, // Thickness of the line
                          indent: 8, // Spacing after the text
                        ),
                      ),
                    ],
                  ),
                  Gap(20.h),
                  const SocialAuth(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already_have_account'.tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) =>  LoginScreen()),
                                (Route<dynamic> route) => false,);
                        },
                        child: Text('login'.tr()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
