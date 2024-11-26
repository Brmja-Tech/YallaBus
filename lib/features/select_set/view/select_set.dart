import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/statefull/custom_app_bar.dart';

class SelectSet extends StatefulWidget {
  const SelectSet({super.key});

  @override
  State<SelectSet> createState() => _SelectSetState();
}

class _SelectSetState extends State<SelectSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "select_set".tr(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('reserved'.tr()),
                      const Gap(1),
                      const Icon(
                        Icons.chair,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('your_seat'.tr()),
                      const Gap(1),
                      const Icon(
                        Icons.chair,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('available'.tr()),
                      const Gap(1),
                      const Icon(
                        Icons.chair,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
