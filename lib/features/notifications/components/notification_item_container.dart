import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationItemContainer extends StatelessWidget {
  const NotificationItemContainer({super.key});

  @override
  Widget build(BuildContext context) {

    final w = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset('assets/images/notification.png'),
            ),
           const Gap(5),
            SizedBox(
              width: 0.7 * w,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    'Book your trip now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  AutoSizeText(
                    'Book your ticket now and enjoy the best prices and convenient times.',
                    maxFontSize: 12,
                    minFontSize: 8,
                    style: TextStyle(),
                  ),
                  AutoSizeText('22/5/2024'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
