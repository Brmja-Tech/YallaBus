import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/statefull/custom_app_bar.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class RequestBusScreen extends StatefulWidget {
  const RequestBusScreen({super.key});

  @override
  State<RequestBusScreen> createState() => _RequestBusScreenState();
}

class _RequestBusScreenState extends State<RequestBusScreen> {
  List citys = [
    'cairo',
    'alex',
    'mansoura',
    'tanta',
  ];
  List luxury = [
    'economical',
    'Vip',
    'business',
  ];
  String? city1;
  String? city2;
  String? selectedDate;
  bool isRoundTrip = false;
  int passengers = 1;
  String? selectLuxury;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    final h = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: const CustomAppBar(text: 'Request Bus'),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(h * 0.05),
              Container(
                width: w * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('where_are_you_going'.tr()),
                      Gap(h * 0.01),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              elevation: 2,
                                              context: context,
                                              builder: (context) {
                                                return ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: citys.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      onTap: () {
                                                        setState(() {
                                                          city1 = citys[index];
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      title: Text(citys[index]),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                          child: _buildLocationRow(
                                            icon: Icons.flight_takeoff,
                                            text: city1 ?? 'start_point'.tr(),
                                            w: w,
                                          ),
                                        ),
                                        const Divider(
                                          color: Colors.black12,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              elevation: 2,
                                              context: context,
                                              builder: (context) {
                                                return ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: citys.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      onTap: () {
                                                        setState(() {
                                                          city2 = citys[index];
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      title: Text(citys[index]),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                          child: _buildLocationRow(
                                            icon: Icons.flight_land,
                                            text: city2 ?? 'end_point'.tr(),
                                            w: w,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        String temp = city1 ?? '';
                                        city1 = city2 ?? '';
                                        city2 = temp;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.swap_vert_circle,
                                      color: AppColors.primaryColor,
                                      size: 42,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(h * 0.02),
                          InkWell(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 30)),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    selectedDate =
                                        '${value.year}-${value.month}-${value.day}';
                                  });
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_month,
                                        color: AppColors.primaryColor),
                                    Gap(w * 0.1),
                                    const SizedBox(width: 8),
                                    Text(
                                      selectedDate ?? 'select_date'.tr(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Gap(h * 0.01),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('round_trip'.tr()),
                                  const SizedBox(width: 8),
                                  Switch(
                                    value: isRoundTrip,
                                    onChanged: (bool value) {
                                      setState(() {
                                        isRoundTrip = value;
                                      });
                                    },
                                    activeColor: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(h * 0.02),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            _buildOptionCard(
                              icon: Icons.person,
                              label: passengers.toString(),
                              w: w,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Container(
                                      width: w * 0.3,
                                      decoration: BoxDecoration(
                                        // border: Border.all(
                                        //     color: AppColors.primaryColor),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: AppColors.primaryColor,
                                      )),
                                  onPressed: () {
                                    setState(() {
                                      if (passengers > 1) {
                                        passengers--;
                                      }
                                    });
                                  },
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Container(
                                      width: w * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.add,
                                          color: AppColors.primaryColor)),
                                  onPressed: () {
                                    setState(() {
                                      passengers++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: luxury.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      onTap: () {
                                        setState(() {
                                          selectLuxury = luxury[index];
                                        });
                                        Navigator.pop(context);
                                      },
                                      title: Text(luxury[index]),
                                    );
                                  });
                            },
                          ).then((_) {
                            setState(() {});
                          });
                        },
                        child: _buildOptionCard(
                          icon: Icons.airline_seat_recline_normal,
                          label: selectLuxury ?? 'select_luxury'.tr(),
                          w: w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildLocationRow({
    required IconData icon,
    required String text,
    required double w,
  }) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryColor),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildOptionCard({
    required IconData icon,
    required String label,
    required double w,
  }) {
    return Card(
      elevation: 1,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primaryColor),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
