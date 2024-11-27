import 'package:flutter/material.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/More/view/more.dart';
import 'package:sama_bus/features/driver_orders/view/driver_orders.dart';
import 'package:sama_bus/features/driver_profile/view/driver_profile.dart';
import 'package:sama_bus/features/get_all_tickets/view/get_all_tickets.dart';

import '../../features/home/view/home_screen.dart';

class DriverBottomNavigationBar extends StatefulWidget {
  const DriverBottomNavigationBar({super.key});

  @override
  State<DriverBottomNavigationBar> createState() =>
      _DriverBottomNavigationBarState();
}

class _DriverBottomNavigationBarState extends State<DriverBottomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DriverProfileScreen(),
    DriverOrdersScreen(),
    MoreScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
