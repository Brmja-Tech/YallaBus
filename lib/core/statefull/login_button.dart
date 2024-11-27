import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff1C26E4),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
          child: AutoSizeText(text,
              maxFontSize: 20,
              style: const TextStyle(
                color: Colors.white,
              ))),
    );
  }
}
