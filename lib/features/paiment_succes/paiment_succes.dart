import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/routers/bottom_navbar.dart';
import 'package:sama_bus/core/statefull/custom_app_bar.dart';
import '../../core/styles/app_colors.dart';

class PaimentSucces extends StatelessWidget {
  const PaimentSucces({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()
              ),
                (Route<dynamic> route) => false,
            );
          },
          child: Container(
            width: double.infinity,
            height: 0.08 * h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              'continue_to_reservation'.tr(),
              style: const TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
      appBar: CustomAppBar(text: 'payment_status'.tr()),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.borderColor)),
                child: Padding(
                  padding: EdgeInsets.all(15.r),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: SizedBox(
                              height: 0.06 * h,
                              child: SvgPicture.asset(
                                  'assets/images/PaimentSucces.svg'))),
                      const Gap(10),
                      const Center(
                          child: AutoSizeText(
                              'Payment has been made successfully.')),
                      Center(
                          child: SizedBox(
                              height: 0.15 * h,
                              child: SvgPicture.asset(
                                  'assets/images/qrcode.svg'))),
                      const Divider(
                        color: AppColors.borderColor,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(5),
                              AutoSizeText(
                                'full_name'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('AbdelrhmanAdel'),
                              const Gap(5),
                              AutoSizeText(
                                'bus_category'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('economic'),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(5),
                              AutoSizeText(
                                'booking_code'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('V13NS90'),
                              const Gap(5),
                              AutoSizeText(
                                'seat_number'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              // ignore: prefer_const_constructors
                              AutoSizeText('8D'),
                            ],
                          ))
                        ],
                      ),
                      const Divider(
                        color: AppColors.borderColor,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(5),
                              AutoSizeText(
                                'payment_method'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('Vodafone Cash'),
                              const Gap(5),
                              AutoSizeText(
                                'time'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('9:14 Am'),
                              const Gap(5),
                              AutoSizeText(
                                'payment_status'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('succes'),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(5),
                              AutoSizeText(
                                'invoice_number'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('INV567489240UI'),
                              const Gap(5),
                              AutoSizeText(
                                'date'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              // ignore: prefer_const_constructors
                              AutoSizeText('24 February 2023'),
                              const Gap(5),

                              AutoSizeText(
                                'amount_paid'.tr(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const Gap(3),
                              const AutoSizeText('400'),
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'download_the_ticket'.tr(),
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                  Icon(
                    Icons.download_sharp,
                    color: AppColors.primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
