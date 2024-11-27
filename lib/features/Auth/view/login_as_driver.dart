import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';


class LoginAsDriverScreen extends StatelessWidget {
  LoginAsDriverScreen({super.key});
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
          child: SingleChildScrollView(
            child: Container(
              height: h,
              width: w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
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
                    Text('welcome_to_yalaBus'.tr(),
                        style: TextStyle(fontSize: 20.sp, color: Colors.white)),
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
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      ),
                    ),
                    Gap(h * 0.02),
                    Gap(h * 0.02),
                    FilledButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        fixedSize:
                            WidgetStateProperty.all(Size(w * 0.8, h * 0.06)),
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0xff1C26E4)),
                      ),
                      child: Text('login'.tr()),
                    ),
                    Gap(h * 0.02),
                    Gap(h * 0.02),
                    Text(
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      '${'dont_have_account'.tr()}  ${'create_account'.tr()}',
                    ),
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
                          child: AutoSizeText(
                            'Join_us_as_a_service_provider'.tr(),
                            maxFontSize: 15,
                            style:const  TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(h * 0.02),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
