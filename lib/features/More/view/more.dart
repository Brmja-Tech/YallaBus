import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/seconedBackground.png'))),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'settings'.tr(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Gap(h * 0.05),
                Text(
                  'general'.tr(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Gap(h * 0.01),
                CustomProfileButton(
                  text: 'profile'.tr(),
                  icon: Icons.person_2_outlined,
                ),
                Gap(h * 0.01),
                CustomProfileButton(
                  text: 'lang'.tr(),
                  icon: Icons.language,
                ),
                Gap(h * 0.01),
                Text(
                  'more'.tr(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Gap(h * 0.01),
                CustomProfileButton(
                  text: 'about'.tr(),
                  icon: Icons.info_outline,
                ),
                Gap(h * 0.01),
                CustomProfileButton(
                  text: 'privacy_policy'.tr(),
                  icon: Icons.description,
                ),
                Gap(h * 0.01),
                CustomProfileButton(
                  text: 'terms_and_conditions'.tr(),
                  icon: Icons.settings_accessibility,
                ),
                // const Spacer(),
                Gap(h * 0.01),
                const Divider(),
                Gap(h * 0.01),
                Container(
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        const Text(
                          style: TextStyle(color: Colors.red, fontSize: 24),
                          ' | ',
                        ),
                        AutoSizeText(
                          style: const TextStyle(color: Colors.red),
                          'log_out'.tr(),
                          maxFontSize: 18,
                          minFontSize: 12,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
                // Gap(h * 0.05)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton(
      {super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderColor)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(icon),
            const Text(
              ' | ',
              style: TextStyle(fontSize: 24),
            ),
            AutoSizeText(
              text,
              maxFontSize: 18,
              minFontSize: 12,
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
