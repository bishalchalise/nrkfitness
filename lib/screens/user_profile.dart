import 'package:flutter/material.dart';

import 'home_screen.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
      if (_selectedIndex == index) {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );        
      }
      else {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfile()),
            );        
      }
    
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         

         

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_gymnastics,
            ),
            label: 'Gym',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.tertiary,
        onTap:_onItemTapped,
      ),
    
    );
  }
}