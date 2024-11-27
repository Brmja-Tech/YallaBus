import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sama_bus/core/statefull/custom_app_bar.dart';
import 'package:sama_bus/features/notifications/components/notification_item_container.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(text: 'notifications'.tr()),
        body: SafeArea(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const  NotificationItemContainer();
          },
        )));
  }
}
