import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class OrderRequestContainer extends StatelessWidget {
  const OrderRequestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.01),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.borderColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h * 0.01),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                maxFontSize: 14,
                '${'sets'.tr()} : 4',
                style: const TextStyle(color: Colors.black54),
              ),
              Gap(h * 0.01),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                          maxFontSize: 14,
                          '${'start_point'.tr()} : Cairo'),
                      const Icon(
                        Icons.arrow_forward,
                        size: 14,
                        color: Colors.black54,
                      ),
                      AutoSizeText(
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                          maxFontSize: 14,
                          '${'end_point'.tr()} : Alex'),
                    ],
                  ),
                ),
              ),
              Gap(h * 0.01),
              const AutoSizeText(
                maxFontSize: 14,
                '24 Nov 2024',
                style: TextStyle(color: Colors.black54),
              ),
              Gap(h * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price text
                  Text(
                    '500 ${'le'.tr()}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Buttons
                  Row(
                    children: [
                      // Reject button
                      ElevatedButton(
                        onPressed: () {
                          // Action for Reject
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Red background
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                        ),
                        child: Text(
                          'reject'.tr(),
                          style: const TextStyle(
                              color: Colors.white), // White text
                        ),
                      ),
                      Gap(w * 0.01),
                      // Accept button
                      ElevatedButton(
                        onPressed: () {
                          // Action for Accept
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Green background
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                        ),
                        child: Text(
                          'accept'.tr(),
                          style: const TextStyle(
                              color: Colors.white), // White text
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(h * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
