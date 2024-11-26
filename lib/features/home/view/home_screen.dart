import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/seconedBackground.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(h * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown,
                        radius: 22,
                        child: Text(
                          'M',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Icon(
                        Icons.notifications_none,
                        size: 32,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Gap(h * 0.08),
                Container(
                  width: w * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black12,
                          child: Icon(
                            size: 28,
                            Icons.directions_bus,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Gap(h * 0.01),
                        Text('${'request_custom_ride'.tr()} !'),
                        Gap(h * 0.01),
                        Text(
                          'request_custom_ride_description'.tr(),
                          style: const TextStyle(color: Colors.black54),
                        ),
                        Gap(h * 0.01),
                        FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            fixedSize: WidgetStateProperty.all(
                              Size(w * 0.6, h * 0.04),
                            ),
                          ),
                          child: Text('request_now'.tr()),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(h * 0.02),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                              itemBuilder: (context, index) {
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
                                              itemBuilder: (context, index) {
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Container(
                                        width: w * 0.3,
                                        decoration: BoxDecoration(
                                          // border: Border.all(
                                          //     color: AppColors.primaryColor),
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                Gap(h * 0.02),
                FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(
                        Size(w * 0.8, h * 0.04),
                      ),
                    ),
                    child: Text(
                      'see_available'.tr(),
                    )),
                Gap(h * 0.02)
              ],
            ),
          ),
        ),
      ),
    );
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
        Spacer(),
        Icon(Icons.swap_vert, color: AppColors.primaryColor),
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
