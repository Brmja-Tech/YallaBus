import 'package:flutter/material.dart';
import 'package:sama_bus/core/styles/app_colors.dart';
import 'package:sama_bus/features/More/view/more.dart';
import 'package:sama_bus/features/provider_home_page/view/provider_home_screen.dart';
import 'package:sama_bus/features/provider_trips/view/provider_trips.dart';


class ProviderBottomNavigationBar extends StatefulWidget {
  const ProviderBottomNavigationBar({super.key});

  @override
  State<ProviderBottomNavigationBar> createState() =>
      _ProviderBottomNavigationBarState();
}

class _ProviderBottomNavigationBarState
    extends State<ProviderBottomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ProviderProfileScreen(),
    ProviderTripsScreen(),
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
