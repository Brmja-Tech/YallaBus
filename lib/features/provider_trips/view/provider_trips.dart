import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/driver_orders/components/order_request_container.dart';

class ProviderTripsScreen extends StatefulWidget {
  const ProviderTripsScreen({super.key});

  @override
  _ProviderTripsScreen createState() => _ProviderTripsScreen();
}

class _ProviderTripsScreen extends State<ProviderTripsScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<String> pageNames = [
    'current_orders'.tr(),
    'completed_orders'.tr(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changePage(int page) {
    setState(() {
      currentPage = page;
    });
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              'assets/images/seconedBackground.png',
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.09),
                child: Column(
                  children: [
                    Gap(0.14 * h),
                    Text(
                      'my_orders'.tr(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Display current page name

                    Gap(h * 0.02),
                    // Page selection buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        pageNames.length,
                        (index) => TextButton(
                          onPressed: () => _changePage(index),
                          child: Container(
                            decoration: BoxDecoration(
                                border: index == currentPage
                                    ? Border(
                                        bottom: BorderSide(
                                            color: AppColors.primaryColor,
                                            width: 2))
                                    : null),
                            child: Text(
                              pageNames[index],
                              style: TextStyle(
                                  color: index == currentPage
                                      ? AppColors.primaryColor
                                      : Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.7,
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        itemCount: pageNames.length,
                        itemBuilder: (context, index) {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, itemIndex) =>
                                const OrdersContainer(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
