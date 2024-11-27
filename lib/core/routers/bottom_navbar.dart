// import 'package:flutter/material.dart';
// import 'package:sama_bus/core/styles/app_colors.dart';

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//   static  List<Widget> _widgetOptions = <StatefulWidget>[
//      Homescreen()
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: '',
//           ),
//            BottomNavigationBarItem(
//             icon: Icon(Icons.confirmation_num),
//             label: ' AppLocalizations.of(context)!.search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'AppLocalizations.of(context)!.settings',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: AppColors.primaryColor,
//         unselectedItemColor: Colors.black26,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
