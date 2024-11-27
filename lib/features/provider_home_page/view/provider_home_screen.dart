import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/driver_profile/view/components/order_request_container.dart';

class ProviderProfileScreen extends StatelessWidget {
  const ProviderProfileScreen({super.key});

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
          const Positioned(
            top: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Gap(20),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ],
            ),
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
                      'Bus For Transportion',
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
                                  '${'name'.tr()} : Bus Station',
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
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.borderColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(w * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'services'.tr(),
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(w * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0x4226B3F4)),
                                      child: Padding(
                                        padding: EdgeInsets.all(w * 0.02),
                                        child: Image.asset(
                                          'assets/images/tripsVector.png',
                                          width: w * 0.1,
                                          height: w * 0.1,
                                        ),
                                      ),
                                    ),
                                    Gap(h * 0.01),
                                    Text(
                                      'trips_on_your_comp'.tr(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton.icon(
                                      onPressed: () {},
                                      label: Text('details'.tr()),
                                      icon: Icon(Icons.arrow_back_ios),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Gap(h * 0.02),
                            Container(
                              width: w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(w * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0x4226B3F4)),
                                      child: Padding(
                                        padding: EdgeInsets.all(w * 0.02),
                                        child: Image.asset(
                                          'assets/images/driversVector.png',
                                          width: w * 0.1,
                                          height: w * 0.1,
                                        ),
                                      ),
                                    ),
                                    Gap(h * 0.01),
                                    Text(
                                      'your_drivers'.tr(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton.icon(
                                      onPressed: () {},
                                      label: Text('details'.tr()),
                                      icon: Icon(Icons.arrow_back_ios),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
