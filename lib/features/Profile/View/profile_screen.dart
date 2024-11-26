import 'package:flutter/material.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
        body: Stack(
          children: [
            Image.asset('assets/images/seconedBackground.png'),
            Image.asset(
              'assets/images/logo.png',
              width: w * 0.5,
            ),
          ],
        ));
  }
}
