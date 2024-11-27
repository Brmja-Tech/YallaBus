import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';

import '../../../core/statefull/login_button.dart';

class RegisterAsDriverScreen extends StatefulWidget {
  const RegisterAsDriverScreen({super.key});
  @override
  State<RegisterAsDriverScreen> createState() =>
      _RegisterAsDriverScreenState();
}

class _RegisterAsDriverScreenState extends State<RegisterAsDriverScreen> {
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
                    text: 'continue'.tr(),
                  ),
                  Gap(30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 0.5 * w,
                        child: AutoSizeText(
                          'are_you_already_a_member_of_yalaBus?'.tr(),
                          maxFontSize: 10,
                          minFontSize: 5,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('login'.tr(),
                            style: const TextStyle(color: Color(0xff1C26E4))),
                      ),
                    ],
                  ),
                  Gap(10.h),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: w * 0.6,
                      height: h * 0.05,
                      child: Center(
                        child: AutoSizeText(
                          'Join_us_as_a_service_provider'.tr(),
                          maxFontSize: 15,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
