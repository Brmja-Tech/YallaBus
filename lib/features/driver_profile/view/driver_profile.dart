import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/driver_profile/view/components/order_request_container.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        alignment: Alignment.topLeft,

        children: [
          Image.asset(
            'assets/images/seconedBackground.png',
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.09),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(100),
                    Container(
                      width: w * 0.3,
                      height: w * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey, width: 6)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.saturation, // Applies grayscale filter
                          ),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: w * 0.25,
                            width: w * 0.25,
                          ),
                        ),
                      ),
                    ),
                    Gap(h * 0.01),
                    const Text(
                      'Mahmoud Ahmed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(h * 0.01),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.borderColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: w * 0.03, vertical: h * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  maxFontSize: 14,
                                  '${'name'.tr()} : Mahmoud',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                Gap(h * 0.01),
                                AutoSizeText(
                                  maxFontSize: 14,
                                  '${'email'.tr()} : mahmoud@example.com',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                Gap(h * 0.01),
                                AutoSizeText(
                                  maxFontSize: 14,
                                  '${'phone'.tr()} : 01xxxxxxxxx',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                Gap(h * 0.01),
                                AutoSizeText(
                                  maxFontSize: 14,
                                  '${'vehicle_num'.tr()} : أ ب 123',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                Gap(h * 0.01),
                              ],
                            ),
                            Image.asset(
                              'assets/images/comma.png',
                              width: w * 0.15,
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(h * 0.01),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'orders',
                        ),
                      ],
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) =>
                            const OrderRequestContainer()),
                    Gap(h * 0.01),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
