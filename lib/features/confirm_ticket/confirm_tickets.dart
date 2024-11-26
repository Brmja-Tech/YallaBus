import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_app_bar.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class ConfirmTickets extends StatefulWidget {
  const ConfirmTickets({super.key});

  @override
  State<ConfirmTickets> createState() => _ConfirmTicketsState();
}

class _ConfirmTicketsState extends State<ConfirmTickets> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
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
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
      appBar: CustomAppBar(text: 'Book_my_ticket'.tr()),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 0.5 * w,
                                    child: const AutoSizeText(
                                        minFontSize: 20,
                                        'ticket from cairo to alex')),
                                SizedBox(
                                    width: 0.5 * w,
                                    child: const AutoSizeText(
                                      'Economy class',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                              ]),
                          Image.asset(
                            'assets/images/logo.png',
                            width: 100.w,
                          ),
                        ],
                      ),
                      const Divider(
                        color: AppColors.borderColor,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('cairo'),
                          Text('alex'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '09:30 AM',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 0.1 * w,
                                child: Divider(
                                  color: AppColors.primaryColor,
                                  thickness: 2,
                                ),
                              ),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.directions_bus,
                                  color: AppColors.primaryColor,
                                  size: 32,
                                ),
                              ), // Spae for the icon
                              SizedBox(
                                width: 0.1 * w,
                                child: Divider(
                                  color: AppColors.primaryColor,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '04:00 PM',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('24 Feb 2023'),
                          Text('24 Feb 2023'),
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
                                const Gap(15),
                                AutoSizeText(
                                  'full_name'.tr(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const Gap(5),
                                const AutoSizeText('AbdelrhmanAdel'),
                                const Gap(15),
                                AutoSizeText(
                                  'bus_category'.tr(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const Gap(5),
                                const AutoSizeText('economic'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(15),
                                AutoSizeText(
                                  'booking_code'.tr(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const Gap(5),
                                const AutoSizeText('V13NS90'),
                                const Gap(15),
                                AutoSizeText(
                                  'seat_number'.tr(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const Gap(5),
                                // ignore: prefer_const_constructors
                                AutoSizeText('8D'),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
