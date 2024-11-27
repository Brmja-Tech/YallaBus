import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_text_field.dart';
import 'package:sama_bus/core/statefull/social_auth.dart';
import 'package:sama_bus/features/Auth/view/register_as_driver.dart';
import 'package:sama_bus/features/Auth/view/register_screen.dart';

import '../../../core/routers/bottom_navbar.dart';

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
                    Text('${'welcome_back'.tr()},  ${'login_now'.tr()}',style: const TextStyle(color: Colors.white),),
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
                        style: const  TextStyle(color: Colors.white),
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
                        Text('sign_in_with'.tr(),style: const  TextStyle(color: Colors.white),),
                        Image.asset(
                          width: w * 0.3,
                          'assets/images/rightDivider.png',
                        ),
                      ],
                    ),
                    Gap(h * 0.02),
                    FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const BottomNavigationBarExample()),
                        );
                      },
                      style: ButtonStyle(
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
                    Row(
                      children: [
                        AutoSizeText('dont_have_account'.tr(),style: const TextStyle(color: Colors.white),),
                       const  Gap(5),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const RegisterScreen()),
                              );

                            },
                            child: AutoSizeText('create_account'.tr(),style: const TextStyle(color: Colors.white),))
                      ],
                    ),
                    Gap(h * 0.02),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterAsDriverScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: w * 0.6,
                        height: h * 0.05,
                        child: Center(
                          child: Text('join_yalaBus_now'.tr(),style:const TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
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
