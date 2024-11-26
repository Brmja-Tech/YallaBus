import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextField extends StatelessWidget {
  ProfileTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.isReadOnly = true,
  });

  final String hintText;
  final TextEditingController textEditingController;
  final dynamic prefix;
  final dynamic suffix;
  bool isReadOnly;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Container(
        constraints: BoxConstraints(minHeight: 40.h, maxHeight: 50.h),
        child: TextFormField(
          readOnly: isReadOnly,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black54),  
              fillColor: isReadOnly
                  ? Colors.grey.shade200
                  : Colors.white, // Set the grey background color
              filled: isReadOnly, // Ensures the fillColor is applied
              prefixIcon: prefix,
              suffixIcon: suffix,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide.none,
              )
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(5.r),
              //   borderSide: BorderSide.none,

              // ),
              ),
        ),
      ),
    );
  }
}
