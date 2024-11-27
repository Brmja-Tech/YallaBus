import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/features/driver_profile/view/driver_profile.dart';

import '../../../core/routers/driver_navbar.dart';

class DataConfirmed extends StatelessWidget {
  const DataConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
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
          padding: EdgeInsets.all(10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/confirm_data.svg',
                width: w * 0.6,
              ),
              Gap(h * 0.1),
              const AutoSizeText(
                'Your data has been sent successfully.',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const AutoSizeText(
                  'Your data will be reviewed and your account will be activated',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
              Gap(h * 0.2),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const DriverBottomNavigationBar()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 0.8 * w,
                  height: h * 0.05,
                  child: Center(
                    child: Text(
                      'back_to_login_page'.tr(),
                      style: const TextStyle(color: Colors.white),
                    ),
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
