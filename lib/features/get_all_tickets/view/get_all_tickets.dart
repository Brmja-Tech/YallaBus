import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/features/get_all_tickets/view/components/get_tickets_container.dart';

class GetAllTickets extends StatelessWidget {
  const GetAllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
          // fit: StackFit.expand,
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              'assets/images/seconedBackground.png',
              fit: BoxFit.contain,
            ),
            const Positioned(
              top: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(20),
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(130),
                    const Text(
                      'My Ticket',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Gap(h * 0.01),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: h * 0.01),
                        child: GetTicketsContainer(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
    ));
  }
}
