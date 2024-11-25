import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      this.prefix,
      this.suffix,
      this.obscureText = false});
  final String hintText;
  final TextEditingController textEditingController;
  final dynamic prefix;
  final dynamic suffix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Container(
        constraints: BoxConstraints(minHeight: 50.h, maxHeight: 120.h),
        child: TextFormField(
            obscureText: obscureText,
            
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
              filled: true,
              prefixIcon: prefix,
              suffixIcon: suffix,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            )),
      ),
    );
  }
}
