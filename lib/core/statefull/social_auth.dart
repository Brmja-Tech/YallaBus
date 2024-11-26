import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // padding: EdgeInsets.all(10),
          width: 45.w,
          height: 45.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle, // Keeps it circular
          ),
          child: Center(
            child: Image.asset(
              'assets/images/appleLogo.png',
              width: 25.w, // Adjust width as needed
              height: 25.h, // Adjust height as needed
              fit: BoxFit.contain, // Ensures the image fits nicely
            ),
          ),
        ),
        Gap(w * 0.1),
        Container(
          // padding: EdgeInsets.all(10),
          width: 45.w,
          height: 45.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle, // Keeps it circular
          ),
          child: Center(
            child: Image.asset(
              'assets/images/googleLogo.png',
              width: 25.w, // Adjust width as needed
              height: 25.h, // Adjust height as needed
              fit: BoxFit.contain, // Ensures the image fits nicely
            ),
          ),
        ),
      ],
    );
  }
}
