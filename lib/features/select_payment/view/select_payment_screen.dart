import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_app_bar.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/select_payment/view/components/tickets_container.dart';

class SelectPaymentScreen extends StatelessWidget {
  const SelectPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List payment = [
      {
        'img': 'assets/images/voda-cash.png',
        'name': 'Vodafone Cash',
      },
      {
        'img': 'assets/images/fawry.png',
        'name': 'Fawry ',
      },
      {
        'img': 'assets/images/visaMaster.png',
        'name': 'Visa / Master Card',
      }
    ];
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        text: 'payment_methods'.tr(),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'my_ticket'.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Gap(h * 0.01),
            const TicketsContainer(
              duration: '6',
              endDate: '28 Nov 2024',
              startDate: '28 Nov 2024',
              endPoint: 'Alex',
              startPoint: 'Cairo',
              startTime: '07:00',
              endTime: '10:00',
              img: 'assets/images/logo.png',
              setsNum: '2',
              totalPrice: "240",
            ),
            Gap(h * 0.01),
            Text(
              'payment_methods'.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Gap(h * 0.01),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  // separatorBuilder: (context, index) => const Divider(
                  //   color: Colors.black45,
                  // ),
                  shrinkWrap: true,
                  itemCount: payment.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              payment[index]['img'],
                              width: w * 0.2,
                            ),
                            Gap(w * 0.02),
                            Text(payment[index]['name'],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Gap(w * 0.02),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            const Divider(
              color: Colors.black38,
            ),
            Gap(h * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '240 LE',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'total_price'.tr(),
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  FilledButton(onPressed: () {}, child: Text('pay'.tr()))
                ],
              ),
            ),
            Gap(h * 0.01)
          ],
        ),
      )),
    );
  }
}
