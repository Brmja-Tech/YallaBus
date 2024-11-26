import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/Auth/view/login_screen.dart';

class TicketsContainer extends StatelessWidget {
  const TicketsContainer(
      {super.key,
      required this.img,
      required this.startTime,
      required this.endTime,
      required this.startPoint,
      required this.endPoint,
      required this.duration,
      required this.startDate,
      required this.endDate,
      required this.setsNum,
      required this.totalPrice});
  final String img;
  final String startTime;
  final String endTime;
  final String startPoint;
  final String endPoint;
  final String duration;
  final String startDate;
  final String endDate;
  final String setsNum;
  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.borderColor)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '$totalPrice ${'le'.tr()}',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Text(
                      '$setsNum ${'sets'.tr()}',
                      style: const TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Image.asset(
                  img,
                  width: 100.w,
                ),
              ],
            ),
            const Divider(
              color: AppColors.borderColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(startPoint),
                Text(endPoint),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  startTime,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
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
                  endTime,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(startDate),
                Text(endDate),
              ],
            ),
            Text('$duration ${'hours'.tr()}'),
          ],
        ),
      ),
    );
  }
}
