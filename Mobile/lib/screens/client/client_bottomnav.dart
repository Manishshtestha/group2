import 'package:clientx/screens/client/profile.dart';
import 'package:flutter/material.dart';
import 'package:clientx/screens/client/client_homepage.dart';
import 'package:clientx/screens/client/notifications.dart';
import 'package:clientx/screens/client/analytics.dart';

class ClientBottomnav extends StatefulWidget {
  const ClientBottomnav({super.key});

  @override
  State<ClientBottomnav> createState() => _ClientBottomnavState();
}

class _ClientBottomnavState extends State<ClientBottomnav> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Center(child: ClientHomepage()),
    Center(child: AnalyticsScreen()),
    Center(child: Text('Projects')),
    Center(child: NotificationScreen()),
    Center(child: Profile()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF182C4C),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
