import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class TicketsContainer extends StatelessWidget {
  const TicketsContainer({super.key});

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
                      '450 eg',
                      style: TextStyle(
                          color: AppColors.primaryColor, fontSize: 18),
                    ),
                    const Text(
                      'last 5 sets',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
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
                const Text(
                  '09:30 AM',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                const Text(
                  '04:00 PM',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
          ],
        ),
      ),
    );
  }
}
