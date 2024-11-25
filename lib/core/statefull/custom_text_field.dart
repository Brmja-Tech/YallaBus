import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      this.prefix});
  final String hintText;
  final TextEditingController textEditingController;
  final dynamic prefix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Container(
        constraints: BoxConstraints(minHeight: 50.h, maxHeight: 120.h),
        child: TextFormField(
            decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: prefix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        )),
      ),
    );
  }
}
