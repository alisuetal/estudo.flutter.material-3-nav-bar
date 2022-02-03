// ignore_for_file: use_key_in_widget_constructors

import 'package:bottomnavbar/components/navigation_bar_icons.dart';
import 'package:bottomnavbar/pages/example.dart';
import 'package:bottomnavbar/pages/example_two.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _selectedScreenIndex = 0;

  late final List<Widget> _screens = [
    ExamplePage(),
    ExamplePageTwo(),
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SingleChildScrollView(
              child: _screens[_selectedScreenIndex],
            ),
          ),
          Container(
            height: 74,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavBarIcon(
                      icon: Icons.workspaces_filled,
                      inactiveIcon: Icons.workspaces_outline,
                      label: "Label",
                      darkMode: false,
                      active: (_selectedScreenIndex == 0),
                      onClick: () => _selectScreen(0),
                    ),
                    NavBarIcon(
                      icon: Icons.workspaces_filled,
                      inactiveIcon: Icons.workspaces_outline,
                      label: "Label",
                      darkMode: false,
                      active: (_selectedScreenIndex == 1),
                      onClick: () => _selectScreen(1),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
