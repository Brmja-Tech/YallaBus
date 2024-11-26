import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/Profile/View/components/widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isReadOnly = true;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/seconedBackground.png'))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(180),
                  Container(
                    width: w * 0.3,
                    height: w * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey, width: 6)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        'assets/images/cr7.jpg',
                        height: w * 0.25,
                        width: w * 0.25,
                      ),
                    ),
                  ),
                  Gap(h * 0.01),
                  Text(
                    'personal_info'.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Gap(h * 0.02),
                  ProfileTextField(
                    hintText: 'name'.tr(),
                    textEditingController: TextEditingController(),
                    isReadOnly: isReadOnly,
                  ),
                  Gap(h * 0.01),
                  ProfileTextField(
                    hintText: 'email'.tr(),
                    textEditingController: TextEditingController(),
                    isReadOnly: isReadOnly,
                  ),
                  Gap(h * 0.01),
                  ProfileTextField(
                    hintText: 'phone'.tr(),
                    textEditingController: TextEditingController(),
                    isReadOnly: isReadOnly,
                  ),
                  Gap(h * 0.01),
                  ProfileTextField(
                    hintText: 'password'.tr(),
                    textEditingController: TextEditingController(),
                    isReadOnly: isReadOnly,
                  ),
                  Gap(h * 0.01),
                  ProfileTextField(
                    hintText: 'password_confirmtion'.tr(),
                    textEditingController: TextEditingController(),
                    isReadOnly: isReadOnly,
                  ),
                  Gap(h * 0.02),
                  FilledButton(
                      style: ButtonStyle(
                        fixedSize:
                            WidgetStateProperty.all(Size(w * 0.85, h * 0.06)),
                      ),
                      onPressed: () {
                        setState(() {
                          log(isReadOnly.toString());
                          isReadOnly = !isReadOnly;
                        });
                      },
                      child: Text(isReadOnly ? 'change'.tr() : 'save'.tr()))
                ],
              ),
            ),
          ),
        ));
  }
}
