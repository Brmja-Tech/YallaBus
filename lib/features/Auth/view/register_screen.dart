import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';

import '../../../core/statefull/login_button.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(150.h),
                  Customtextfield(
                    hintText: 'username',
                    textEditingController: userNameController,
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'email',
                    textEditingController: emailController,
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'phone',
                    textEditingController: phoneController,
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'password',
                    textEditingController: passwordController,
                    prefix: const Icon(Icons.visibility),
                  ),
                  Gap(20.h),
                  Customtextfield(
                    hintText: 'password confirmtion',
                    textEditingController: passwordConfirmController,
                    prefix: const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                  Gap(30.h),
                  const CustomLoginButton(),
                  Gap(30.h),
                  const Row(
                    children: [
                      // Left line
                      Expanded(
                        child: Divider(
                          color: Colors.black, // Color of the line
                          thickness: 1, // Thickness of the line
                          endIndent: 8, // Spacing before the text
                        ),
                      ),
                      // Text in the middle
                      Text(
                        'Register through', // Arabic text
                        style: TextStyle(
                          color: Colors.black, // Text color
                          fontSize: 16, // Text size
                        ),
                      ),
                      // Right line
                      Expanded(
                        child: Divider(
                          color: Colors.black, // Color of the line
                          thickness: 1, // Thickness of the line
                          indent: 8, // Spacing after the text
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Login'),
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
