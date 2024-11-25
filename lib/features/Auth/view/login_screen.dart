import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';
import 'package:sama_bus/core/statefull/social_auth.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.07),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Gap(h * 0.09),
                    Image.asset(
                      'assets/images/logo.png',
                      width: w * 0.6,
                    ),
                    Gap(h * 0.02),
                    Text('${'welcome_back'.tr()},  ${'login_now'.tr()}'),
                    Gap(h * 0.02),
                    Customtextfield(
                      hintText: 'email'.tr(),
                      textEditingController: emailController,
                      prefix: const Icon(Icons.email),
                    ),
                    Gap(h * 0.01),
                    Customtextfield(
                      hintText: 'password'.tr(),
                      textEditingController: passwordController,
                      prefix: const Icon(Icons.lock),
                      obscureText: true,
                      suffix: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.visibility_off),
                      ),
                    ),
                    Gap(h * 0.02),
                    InkWell(
                      child: Text(
                        'forget_password'.tr(),
                      ),
                    ),
                    Gap(h * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          width: w * 0.3,
                          'assets/images/leftDivider.png',
                        ),
                        Text('sign_in_with'.tr()),
                        Image.asset(
                          width: w * 0.3,
                          'assets/images/rightDivider.png',
                        ),
                      ],
                    ),
                    Gap(h * 0.02),
                    FilledButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: WidgetStateProperty.all(5),
                        fixedSize:
                            WidgetStateProperty.all(Size(w * 0.8, h * 0.06)),
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0xff1C26E4)),
                      ),
                      child: Text('login'.tr()),
                    ),
                    Gap(h * 0.02),
                    const SocialAuth(),
                    Gap(h * 0.02),
                    Text(
                        '${'dont_have_account'.tr()}  ${'create_account'.tr()}'),
                    Gap(h * 0.02),
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
                          child: Text('join_yalaBus_now'.tr()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
