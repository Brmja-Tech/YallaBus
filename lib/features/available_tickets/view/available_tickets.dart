import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

import 'components/tickets_container.dart';

class AvailableTeckits extends StatefulWidget {
  const AvailableTeckits({super.key});

  @override
  State<AvailableTeckits> createState() => _AvailableTeckitsState();
}

class _AvailableTeckitsState extends State<AvailableTeckits> {
  final List<String> dates = [
    'Fri, 24 Feb',
    'Sat, 25 Feb',
    'Sun, 26 Feb',
    'Mon, 27 Feb',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Cairo"),
                Icon(Icons.arrow_right_rounded),
                Text('alex')
              ],
            ),
            Text(
              'Economical. 1 person',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            SizedBox(
              height: 50, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dates[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                          if (isSelected)
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              height: 3,
                              width: 80, // Adjust width as needed
                              color: Colors.blue,
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      TicketsContainer(),
                      Gap(10),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
